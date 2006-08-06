package MT::Plugin::Jalali;

use strict;
use vars qw( $VERSION );
$VERSION = '1.0';

require MT;
require MT::Plugin;
use JalaliEX;
use MT::Template::Context;

my $plugin = {
	name                   => "<MT_TRANS phrase=\"Jalali Calendar\">",
	description            => "<MT_TRANS phrase=\"Adds Jalali calendar and Jalali archiving to your weblog.\">",
	version                => $VERSION,
	author_name            => "<MT_TRANS phrase=\"Aziz Ashofte\">",
	author_link            => 'http://aziza.ir',
	plugin_link            => 'http://www.movabletype.ir/',
	doc_link               => 'http://www.movabletype.ir/plugins/jalalical',
	blog_config_template   => \&blog_template,
	settings               => new MT::PluginSettings([
		['jcal_enabled', { Default => 0, Scope => 'blog' }],
	]),    
}; 
MT->add_plugin(new MT::Plugin($plugin));
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_blog', 4, $plugin, \&NewWeblogCalType);
MT->add_callback('MT::App::CMS::AppTemplateSource.cfg_prefs', 9, $plugin, \&_cfg_lang);
MT->add_callback('MT::App::CMS::AppTemplateSource.cfg_simple', 9, $plugin, \&_cfg_lang);
MT->add_callback('CMSPostSave.blog', 5, $plugin, \&Jcal_CMSPostSave_blog);
MT::Template::Context->add_container_tag('JCalendar', \&__hdlr_calendar);
MT::Template::Context->add_global_filter(numbers => sub {
        my($str, $value, $ctx) = @_;
        if ($value eq 'farsi') { $str = farsi_number($str) }
        $str;
    });

require MT::Builder;
require MT::WeblogPublisher;
my $mt_builder_build = \&MT::Builder::build;
my $mt_rebuild = \&MT::WeblogPublisher::rebuild;
{
	local $SIG{__WARN__} = sub {  }; 
	*MT::Builder::build = \&farsi_builder_build;
	*MT::WeblogPublisher::rebuild = \&farsi_rebuild;
}
	
sub blog_template {
my $tmpl = <<EOT;
<div class="setting">
  <div class="label"><label for="fa_cal_type"><MT_TRANS phrase="Calendar Type:"></label></div>
	<div class="field">
		<ul>
			<li><label><input type="radio" value="1" name="jcal_enabled" id="jcal_enabled" class="cb" <TMPL_IF NAME="JCAL_ENABLED">checked="checked"</TMPL_IF> /> <MT_TRANS phrase="Jalali Calendar"></label></li>
			<li><label><input type="radio" value="0" name="jcal_enabled" id="jcal_enabled" class="cb" <TMPL_UNLESS NAME="JCAL_ENABLED">checked="checked"</TMPL_UNLESS> /> <MT_TRANS phrase="Western Calendar"></label></li>
		</ul>
	<p><MT_TRANS phrase="Define the type of calnedar you would like to use for your weblog."></p>
	</div>
</div>
EOT
}

#####################################################################
sub NewWeblogCalType {
	my ($cb, $app, $template) = @_;
	my $old = qq{</fieldset>};
	$old = quotemeta($old);	
	my $new = <<HTML;
<TMPL_IF NAME=NEW_OBJECT>
<div class="setting">
  <div class="label"><label for="fa_cal_type"><MT_TRANS phrase="Calendar Type:"></label></div>
	<div class="field">
		<ul>
			<li><label><input type="radio" value="jal" name="fa_cal_type" id="fa_cal_type" class="cb" /> <MT_TRANS phrase="Jalali Calendar"></label></li>
			<li><label><input type="radio" value="gre" name="fa_cal_type" id="fa_cal_type" class="cb" /> <MT_TRANS phrase="Western Calendar"></label></li>
		</ul>
	<p><MT_TRANS phrase="Define the type of calnedar you would like to use for your weblog."></p>
	</div>
</div>
</TMPL_IF>
</fieldset>
HTML
	$$template =~ s/$old/$new/;
}

sub _cfg_lang {
	my ($cb, $app, $template) = @_;
	my $old = qq{<option value="et"<TMPL_IF NAME=LANGUAGE_ET> selected="selected"</TMPL_IF>><MT_TRANS phrase="Estonian"></option>};
	$old = quotemeta($old);
	my $new = <<HTML;
<option value="et"<TMPL_IF NAME=LANGUAGE_ET> selected="selected"</TMPL_IF>><MT_TRANS phrase="Estonian"></option>
<option value="fa"<TMPL_IF NAME=LANGUAGE_FA> selected="selected"</TMPL_IF>><MT_TRANS phrase="Persian"></option>
HTML
	$$template =~ s/$old/$new/;
}

sub Jcal_CMSPostSave_blog {
  my $eh = shift;
  my ($app, $obj) = @_;
  if ($app->{'query'}->param("fa_cal_type") eq 'jal') {
	$plugin->set_config_value('jcal_enabled', 1, 'blog:'.$obj->id);	
	## adding the jalali cal widget 
	require MT::Template;
	my $tmpl = MT::Template->new;
	$tmpl->blog_id($obj->id);
	$tmpl->type('custom');
	$tmpl->name('Widget: تقویم جلالی');
	my $new_temp = <<HTML;
<div class="module-calendar module">
<h2 class="module-header">تقویم ماهیانه</h2>
<div class="module-content">
<table summary="تقویم جلالی ماهیانه با لینک به نوشته های هر روز ماه">
    <tr>
        <th title="شنبه"     abbr="شنبه"    >ش </th>
        <th title="یکشنبه"   abbr="یکشنبه"  >۱ش</th>
        <th title="دوشنبه"   abbr="دوشنبه"  >۲ش</th>
        <th title="سه شنبه"  abbr="سه شنبه" >۳ش</th>
        <th title="چهارشنبه" abbr="چهارشنبه">۴ش</th>
        <th title="پنجشنبه"  abbr="پنجشنبه" >۵ش</th>
        <th title="جمعه"      abbr="جمعه"     >ج </th>
    </tr>
    <MTJCalendar month="this">
    <MTCalendarWeekHeader><tr></MTCalendarWeekHeader>
    <td <MTCalendarIfToday>style="border:1px solid #36414D" title="امروز"</MTCalendarIfToday>>
    <MTCalendarIfEntries>
    <MTEntries lastn="1">
    <strong><a href="<MTEntryPermalink>"><MTCalendarDay numbers="farsi"></a></strong>
    </MTEntries>
    </MTCalendarIfEntries>
    <MTCalendarIfNoEntries>
    <MTCalendarDay numbers="farsi">
    </MTCalendarIfNoEntries>
    <MTCalendarIfBlank>&nbsp;</MTCalendarIfBlank>
	</td>
    <MTCalendarWeekFooter></tr></MTCalendarWeekFooter>
    </MTJCalendar>
</table>
</div>
</div>
HTML
	$tmpl->text($new_temp);
	$tmpl->save;
  } else {
	$plugin->set_config_value('jcal_enabled', 0, 'blog:'.$obj->id);	
  }
}
#####################################################################
sub farsi_builder_build {
	(my $blog_id = $_[1]->stash('blog_id')) || return &{$mt_builder_build}(@_);
	my $if_jcal = $plugin->get_config_value('jcal_enabled', 'blog:'.$blog_id);
	if ($if_jcal) {
		use Jalali;
		&{$mt_builder_build}(@_); 
	} else {
		&{$mt_builder_build}(@_); 
	}
}

sub __hdlr_calendar {
	require Jalali;
	return Jalali::__hdlr_calendar(@_);
}

# sub farsi_rebuild {
    # my $mt = shift;
    # my %param = @_;
    # my $blog;
    # unless ($blog = $param{Blog}) {
        # my $blog_id = $param{BlogID};
		# my $if_jcal = $plugin->get_config_value('jcal_enabled', 'blog:'.$blog_id);
		# if ($if_jcal) {
			# require Jalali;
			# &{$mt_rebuild}(@_); 
		# }	 else {
			# &{$mt_rebuild}(@_); 
		# }
    # }
	
# }


sub farsi_rebuild {
    my $mt = shift;
    my %param = @_;
    my $blog;
    unless ($blog = $param{Blog}) {
        my $blog_id = $param{BlogID};
		my $if_jcal = $plugin->get_config_value('jcal_enabled', 'blog:'.$blog_id);
		if ($if_jcal) {use Jalali;}
		$blog = MT::Blog->load($blog_id, {cached_ok=>1}) or
            return $mt->error(
                MT->translate("Load of blog '[_1]' failed: [_2]",
                    $blog_id, MT::Blog->errstr));
    }
    return 1 if $blog->is_dynamic;
    my $at = $blog->archive_type || '';
    my @at = split /,/, $at;
    if (my $set_at = $param{ArchiveType}) {
        my %at = map { $_ => 1 } @at;
        return $mt->error(
            MT->translate("Archive type '[_1]' is not a chosen archive type",
                $set_at)) unless $at{$set_at};
        @at = ($set_at);
    }
    if (@at) {
        require MT::Entry;
        my %arg = ('sort' => 'created_on', direction => 'descend');
        if ($param{Limit}) {
            $arg{offset} = $param{Offset};
            $arg{limit} = $param{Limit};
        }
        my $pre_iter = MT::Entry->load_iter({ blog_id => $blog->id,
                                       status => MT::Entry::RELEASE() },
                                     \%arg);
        my ($next, $curr);
        my $prev = $pre_iter->();
        my $iter = sub { $next = $curr; $curr = $prev;
            if ($curr) {
                $prev = $pre_iter->();
                $curr->{__next} = $next;
                $curr->{__previous} = $prev;
            }
            $curr;
        };
        my $cb = $param{EntryCallback};
        while (my $entry = $iter->()) {
            if ($cb) {
                $cb->($entry) || $mt->log($cb->errstr());
            }
            for my $at (@at) {
                if ($at eq 'Category') {
                    my $cats = $entry->categories;
                    for my $cat (@$cats) {
                        $mt->_rebuild_entry_archive_type(
                            Entry => $entry, Blog => $blog,
                            Category => $cat, ArchiveType => 'Category',
                            NoStatic => $param{NoStatic},
                        ) or return;
                    }
                } else {
                    $mt->_rebuild_entry_archive_type( Entry => $entry,
                                                      Blog => $blog,
                                                      ArchiveType => $at,
                                                      $param{TemplateID}
                                                       ? (TemplateID =>
                                                           $param{TemplateID})
                                                       : (),
                                                      NoStatic => $param{NoStatic})
                        or return;
                }
            }
        }
    }
    unless ($param{NoIndexes}) {
        $mt->rebuild_indexes( Blog => $blog ) or return;
    }
    if ($mt->{PublishCommenterIcon}) {
        $mt->make_commenter_icon($blog);
    }
    1;
}



1;