package MT::Plugin::Jalali;

use strict;
use JalaliEX;
use vars qw( $VERSION );
use vars qw( %Languages );
use vars qw( %DynamicURIs );
use MT::Util qw( dirify start_end_day start_end_week wday_from_ts substr_wref );
$VERSION = '1.0';

require MT;
require MT::Plugin;

my $plugin = {
	name                   => "<MT_TRANS phrase=\"Jalali Calendar\">",
	description            => "<MT_TRANS phrase=\"Adds Jalali calendar and Jalali archiving to your blog and admin area.\">",
	version                => $VERSION,
	author_name            => "<MT_TRANS phrase=\"Aziz Ashofte\">",
	author_link            => 'http://aziza.ir',
	plugin_link            => 'http://www.movabletype.ir/',
	doc_link               => 'http://www.movabletype.ir/plugins/jalaliex',
	system_config_template => \&system_template,
	blog_config_template   => \&blog_template,
	settings               => new MT::PluginSettings([
		['jcal_enabled', { Default => 1 }],
		['b_jcal_enabled', { Default => 1, Scope => 'blog' }],
	]),    
}; 
MT->add_plugin(new MT::Plugin($plugin));


{
	local $SIG{__WARN__} = sub {  }; 
	*MT::Util::format_ts = \&__format_ts;
	*MT::Util::wday_from_ts = \&_wday_from_ts;
	*MT::Util::start_end_month = \&_start_end_month;
	*MT::Util::start_end_period = \&_start_end_period;
	*MT::Util::archive_file_for = \&_archive_file_for;
	*MT::WeblogPublisher::archive_file_for = \&_archive_file_for;
	*MT::Util::get_entry = \&_get_entry;
}

sub system_template {
my $tmpl = <<EOT;
<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;"></div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
		<ul>
			<li><label><input type="checkbox" value="1" name="jcal_enabled" id="jcal_enabled" class="cb" <TMPL_IF NAME="JCAL_ENABLED">checked="checked"</TMPL_IF> /> تقويم جلالي</label></li>
		</ul>
	<p></p>
	</div>
</div>
EOT
}

sub blog_template {
my $tmpl = <<EOT;
<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;"></div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
		<ul>
			<li><label><input type="checkbox" value="1" name="jcal_enabled" id="jcal_enabled" class="cb" <TMPL_IF NAME="JCAL_ENABLED">checked="checked"</TMPL_IF> /> تقويم جلالي</label></li>
		</ul>
	<p></p>
	</div>
</div>
EOT
}

#####################################################################

my @In_Year = (
        [ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365 ],
        [ 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 ],
);

my @JDays_In = ( 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29 );

sub Jdays_in {
	my($m, $y) = @_;
	return $JDays_In[$m]
	unless $m == 12;
	my $gdate = j2g_ts($y.'1101010101');
	my $g_y = substr($gdate,0,4) - 1;
	if ($g_y % 4 == 0 && ($g_y % 100 != 0 || $g_y % 400 == 0)) {
	return 30;
	}
	else {
	return 29;
	}
}

sub _wday_from_ts {
        my($y, $m, $d) = @_;
        my $leap = leap_year($y) ? 1 : 0;
        $y--;
        ## Copied from Date::Calc.
        my $days = $y * 365;
        $days += $y >>= 2;
        $days -= int($y /= 25);
        $days += $y >> 2;
        $days += $In_Year[$leap][$m-1] + $d;
        ($days+1) % 7;
}

sub yday_from_ts {
        my($y, $m, $d) = @_;
        my $leap = $y % 4 == 0 && ($y % 100 != 0 || $y % 400 == 0) ? 1 : 0;
        $In_Year[$leap][$m-1] + $d;
}

sub leap_year {
    my $y = shift;
    return ($y % 4 == 0) && ($y % 100 != 0 || $y % 400 == 0);
}

sub _start_end_month {
    my($ts) = @_[0];
	$ts = g2j_ts($ts); 
    my $y = substr($ts,0,4);
	my $mo = substr($ts,4,2);
    my $start = $y . $mo . '01000000';
	$start = j2g_ts($start);
    return $start unless wantarray;
	my $end = sprintf "%04d%02d%02d235959", $y, $mo, Jdays_in($mo, $y);
	$end = j2g_ts($end);
    ($start, $end);
}

sub _start_end_period {
    my $at = shift;
    if ($at eq 'Individual') {
        return $_[0];
    } elsif ($at eq 'Daily') {
        return start_end_day(@_);
    } elsif ($at eq 'Weekly') {
        return start_end_week(@_);
    } elsif ($at eq 'Monthly') {
        return _start_end_month(@_);
    } 
}

{
    my %Helpers = ( Monthly => \&_start_end_month,
                    Weekly => \&start_end_week,
                    Daily => \&start_end_day,
                  );
    sub _get_entry {
        my($ts, $blog_id, $at, $order) = @_;
        my($start, $end) = $Helpers{$at}->($ts);
        if ($order eq 'previous') {
            $order = 'descend';
            $ts = $start;
        } else {
            $order = 'ascend';
            $ts = $end;
        }
        my $entry = MT::Entry->load(
            { blog_id => $blog_id,
              status => MT::Entry::RELEASE() },
            { limit => 1,
              'sort' => 'created_on',
              direction => $order,
              start_val => $ts });
        $entry;
    }
}

sub __format_ts {
    my($format, $ts, $blog, $lang) = @_;
    my %f;
    unless ($lang) {
        $lang = $blog && $blog->language ? $blog->language : 
            MT::ConfigMgr->instance->DefaultLanguage;
    }
    if ($lang eq 'jp') {
        $lang = 'ja';
    }
    unless (defined $format) {
        $format = $Languages{$lang}[3] || "%x %X";
    }
    my $cache = MT::Request->instance->cache('formats');
    unless ($cache) {
        MT::Request->instance->cache('formats', $cache = {});
    }
    if (my $f_ref = $cache->{$ts . $lang}) {
        %f = %$f_ref;
    } else {
        my $L = $Languages{$lang};
		my @ts = @f{qw( Y m d H M S )} = unpack 'A4A2A2A2A2A2', $ts;
        $f{w} = wday_from_ts(@ts[0..2]);  
        $f{j} = yday_from_ts(@ts[0..2]);
        $f{'y'} = substr $f{Y}, 2;
        $f{b} = substr_wref $L->[1][$f{'m'}-1] || '', 0, 3;
        $f{B} = $L->[1][$f{'m'}-1];
        if ($lang eq 'ja') {
            $f{a} = substr $L->[0][$f{w}] || '', 0, 8;
        } else {
            $f{a} = substr_wref $L->[0][$f{w}] || '', 0, 3;
        }
        $f{A} = $L->[0][$f{w}];
        ($f{e} = $f{d}) =~ s!^0! !;
        $f{I} = $f{H};
        $f{I} = $f{H};
        if ($f{I} > 12) {
            $f{I} -= 12;
            $f{p} = $L->[2][1];
        } elsif ($f{I} == 0) {
            $f{I} = 12;
            $f{p} = $L->[2][0];
        } elsif ($f{I} == 12) {
            $f{p} = $L->[2][1];
        } else {
            $f{p} = $L->[2][0];
        }
        $f{I} = sprintf "%02d", $f{I};
        ($f{k} = $f{H}) =~ s!^0! !;
        ($f{l} = $f{I}) =~ s!^0! !;
        $f{j} = sprintf "%03d", $f{j};
        $f{z} = $ts;
        $cache->{$ts . $lang} = \%f;
    }
    my $date_format = $Languages{$lang}->[4] || "%x";
    my $time_format = $Languages{$lang}->[5] || "%X";
    $format =~ s!%x!$date_format!g;
    $format =~ s!%X!$time_format!g;

    my $jformat = g2jstrftime( $format , $ts ); ###Aziz
	$jformat = farsi_number($jformat); ###Aziz 
	$jformat =~ s/\./\//g;	###Aziz
    #$format =~ s!%(\w)!$f{$1}!g if defined $format;
	$jformat;
}


sub _archive_file_for {
    my($entry, $blog, $at, $cat, $map, $timestamp) = @_;
    return if $at eq 'None';
    my $file;
    if ($blog->is_dynamic) {
        require MT::TemplateMap;
        $map = MT::TemplateMap->new;
        $map->file_template($DynamicURIs{$at});
    }
    unless ($map) {
        my $cache = MT::Request->instance->cache('maps');
        unless ($cache) {
            MT::Request->instance->cache('maps', $cache = {});
        }
        unless ($map = $cache->{$blog->id . $at}) {
            require MT::TemplateMap;
            $map = MT::TemplateMap->load({ blog_id => $blog->id,
                                           archive_type => $at,
                                           is_preferred => 1 });
            $cache->{$blog->id . $at} = $map if $map;
        }
    }
    my $file_tmpl = $map ? $map->file_template : '';
    $file_tmpl ||= '';
    my($ctx);
    if ($file_tmpl =~ m/\%[_-]?[A-Za-z]/) {
        if ($file_tmpl =~ m/<\$?MT/) {
            $file_tmpl =~ s!(<\$?MT[^>]+?>)|(%[_-]?[A-Za-z])!$1 ? $1 : '<MTFileTemplate format="'. $2 . '">'!ge;
        } else {
            $file_tmpl = qq{<MTFileTemplate format="$file_tmpl">};
        }
    }
    if ($file_tmpl) {
        require MT::Template::Context;
        $ctx = MT::Template::Context->new;
        $ctx->stash('blog', $blog);
    }
    local $ctx->{__stash}{category};
    $timestamp = $entry->created_on() if $entry;

    my $index = MT::ConfigMgr->instance->IndexBasename;
    if ($at eq 'Individual') {
        Carp::croak "archive_file_for Individual archive needs an entry" 
            unless $entry;
        if ($file_tmpl) {
            $ctx->stash('entry', $entry);
            $ctx->{current_timestamp} = $entry->created_on;
        } else {
            if ($blog->old_style_archive_links) {
                $file = sprintf("%06d", $entry->id);
            } else {
                my $basename = $entry->basename();
                $basename = dirify($entry->title()) unless defined($basename);
                $file = sprintf("%04d/%02d/%s", 
                    unpack('A4A2', $entry->created_on),
                    $basename);
            }
        }
    } elsif ($at eq 'Daily') {
        if ($file_tmpl) {
            ($ctx->{current_timestamp}, $ctx->{current_timestamp_end}) =
            start_end_day($timestamp);
        } else {
            my $start = start_end_day($timestamp);
            my($year, $mon, $mday) = unpack 'A4A2A2', $start;
            if ($blog->old_style_archive_links) {
                $file = sprintf("%04d_%02d_%02d", $year, $mon, $mday);
            } else {
                $file = sprintf("%04d/%02d/%02d/%s", $year, $mon, $mday, $index);
            }
        }
    } elsif ($at eq 'Weekly') {
        if ($file_tmpl) {
            ($ctx->{current_timestamp}, $ctx->{current_timestamp_end}) =
                start_end_week($timestamp);
        } else {
            my $start = start_end_week($timestamp);
            my($year, $mon, $mday) = unpack 'A4A2A2', $start;
            if ($blog->old_style_archive_links) {
                $file = sprintf("week_%04d_%02d_%02d", $year, $mon, $mday);
            } else {
                $file = sprintf("%04d/%02d/%02d-week/%s", $year, $mon, $mday, $index);
            }
        }
    } elsif ($at eq 'Monthly') {
        if ($file_tmpl) {
            ($ctx->{current_timestamp}, $ctx->{current_timestamp_end}) =
                _start_end_month($timestamp);
        } else {
            my $start = _start_end_month($timestamp);
			my $start = '909090121212';
            my($year, $mon) = unpack 'A4A2', $start;
            if ($blog->old_style_archive_links) {
                $file = sprintf("%04d_%02d", $year, $mon);
            } else {
                $file = sprintf("%04d/%02d/%s", $year, $mon, $index);
            }
        }
    } elsif ($at eq 'Category') {
        my $this_cat = $cat ? $cat : $entry->category;
        if ($file_tmpl) {
            $ctx->stash('archive_category', $this_cat);
            $ctx->{inside_mt_categories} = 1;
            $ctx->{__stash}{category} = $this_cat;
        } else {
            if (!$this_cat) {
                return "";
            }
            my $label = '';
            $label = dirify($this_cat->label);
            if ($label !~ /\w/) {
                $label = $this_cat ? "cat" .  $this_cat->id : "";
            }
            if ($blog->old_style_archive_links) {
                $file = sprintf("cat_%s", $label);
            } else {
                $file = sprintf("%s/%s", $this_cat->category_path, $index);
            }
        }
    } else {
        return $entry->error(MT->translate(
            "Invalid Archive Type setting '[_1]'", $at ));
    }
    if ($file_tmpl) {
        local $ctx->{archive_type} = $at;
        require MT::Builder;
        my $build = MT::Builder->new;
        my $tokens = $build->compile($ctx, $file_tmpl) 
            or return $blog->error($build->errstr());
        defined($file = $build->build($ctx, $tokens)) 
            or return $blog->error($build->errstr());
    } else {
        my $ext = $blog->file_extension;
        $file .= '.' . $ext if $ext;
    }
    $file;
}


1;