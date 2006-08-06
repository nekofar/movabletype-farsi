# Copyright 2005-2006 Aziz Ashofte. 
# This code cannot be redistributed without permission from the author.  
# For more information, you can contact aziz AT aziza DOT ir
# for more information about this plugin visit: 
# http://movabletype.ir/plugins/farsi
# for more information about the author visit:
# http://aziza.ir
# Last Updated on : August 1, 2006

package MT::Plugin::Farsi;

use strict;
use vars qw( $VERSION );
$VERSION = '1.5b3';

require MT;
require MT::Plugin;

my $plugin = {
	name                   => "<MT_TRANS phrase=\"MT-Farsi\">",
	description            => "<MT_TRANS phrase=\"Adding some right to left features and preparing MT for publishing in Persian.\"> <br /> برای تغییر زبان به پروفايل خود مراجعه کنید",
	version                => $VERSION,
	author_name            => "<MT_TRANS phrase=\"Aziz Ashofte\">",
	author_link            => 'http://aziza.ir',
	plugin_link            => 'http://www.movabletype.ir/',
	doc_link               => 'http://www.movabletype.ir/plugins/farsi',
	icon 				   => 'images/farsi.ico',
	system_config_template => \&system_template,
	settings               => new MT::PluginSettings([
		['jalali_enabled', { Default => 1 }],
		['farsiJS_enabled', { Default => 0 }],
		['fa_def_lang', { Default => 1 }],
	]),    
}; 
MT->add_plugin(new MT::Plugin($plugin));

MT->add_callback('MT::App::CMS::AppTemplateSource'				  , 9, $plugin, \&general_amendments);
MT->add_callback('MT::App::CMS::AppTemplateSource.footer'		  , 9, $plugin, \&edit_template);
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_categories', 9, $plugin, \&list_cats);
MT->add_callback('MT::App::CMS::AppTemplateSource.list_author'	  , 9, $plugin, \&list_authors);
MT->add_callback('MT::App::CMS::AppTemplateSource.cfg_feedback'	  , 9, $plugin, \&feedback);
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_blog'	  , 7, $plugin, \&myNewWeblog);
MT->add_callback('MT::App::CMS::AppTemplateSource.pager'		  , 9, $plugin, \&pager_numbers);
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_entry'	  ,10, $plugin, \&mybuttons);
MT->add_callback('MT::App::CMS::AppTemplateSource.entry_table'	  , 9, $plugin, \&batchedit_dates);
MT->add_callback('MT::App::CMS::AppTemplateSource.login'		  , 8, $plugin, \&login);
MT->add_callback('MT::App::CMS::AppTemplateSource.list_blog'	  , 9, $plugin, \&listblog_tem);
MT->add_callback('MT::App::CMS::AppTemplateSource.search_replace' , 9, $plugin, \&searchreplace_tem);
MT->add_callback('MT::App::CMS::AppTemplateParam'				  , 9, $plugin, \&pager_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.admin'			  , 9, $plugin, \&admin_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_tags'		  , 9, $plugin, \&listtags_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_blog'		  , 9, $plugin, \&listblog_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_author'	  , 9, $plugin, \&listauthor_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_commenters' , 9, $plugin, \&commentertable_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.system_list_blog', 9, $plugin, \&systemlistblog_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_comment'    , 9, $plugin, \&editcomment_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_ping'		  , 9, $plugin, \&editcomment_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_entry'	  , 9, $plugin, \&editentry_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_categories' , 9, $plugin, \&editcategories_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.search_replace'  , 9, $plugin, \&searchreplace_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.rebuilding'      , 9, $plugin, \&rebuilding_params);
#MT->add_callback('MT::App::CMS::AppTemplateSource.header'		  , 9, $plugin, \&keyboard_lang);

MT->add_callback('CMSPreSave.blog', 9, $plugin, \&_CMSPreSave_blog);

my $language_symbol;
{
	my $my_lang = $plugin->get_config_value('fa_def_lang');
	if (!$my_lang) {$language_symbol = 'en_us';} else {$language_symbol = 'fa';}
	use MT::ConfigMgr;
	MT::ConfigMgr->instance->DefaultLanguage($language_symbol);
	MT::ConfigMgr->instance->MailEncoding('utf-8');
	MT->set_language($language_symbol);
	
	my $is_j = $plugin->get_config_value('jalali_enabled');	
	if ($is_j) {
		local $SIG{__WARN__} = sub {  }; 
		*MT::App::CMS::format_ts = \&_format_ts;
		*MT::App::CMS::relative_date = \&_relative_date;
		*MT::App::CMS::save_entry = \&_save_entry;
		*MT::App::CMS::save_entries = \&_save_entries;
		*MT::App::CMS::get_newsbox_content = \&_get_newsbox_content;
		*MT::App::CMS::search_replace = \&_search_replace;
	}
}

## Plugin template

sub system_template {
	require Farsi;
	return Farsi::system_template(@_);
}

## Template changes

sub general_amendments {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {

#  Help Signs
	my $old = qq{class="help">?</a>};
	$old = quotemeta($old);	
	my $new = qq{class="help">؟</a>};
	$$template =~ s/$old/$new/g;

# rtl related images
	$$template =~ s/related.gif/related-right.gif/g;

# keyboard lang 

my $JSkey = $plugin->get_config_value('farsiJS_enabled');
if ($JSkey) {
	my $old = qq{<style type="text/css">};
	$old = quotemeta($old);
	my $new = <<HTML;
<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>plugins/Farsi/js/isiri2901.js"></script>
<style type="text/css">
HTML
	$$template =~ s/$old/$new/;

	my $old = qq{<input};
	$old = quotemeta($old);
	my $new = <<HTML;
<input onkeypress="PersianKeyPress(event)" onkeydown="PersianKeyDown(event)"  
HTML
	$$template =~ s/$old/$new/g;
	
	my $old = qq{<textarea};
	$old = quotemeta($old);
	my $new = <<HTML;
<textarea onkeypress="PersianKeyPress(event)" onkeydown="PersianKeyDown(event)"
HTML
	$$template =~ s/$old/$new/g;	
}
}}}

sub edit_template {
	require Farsi;
	return Farsi::edit_template(@_);
}

sub login {
	require Farsi;
	return Farsi::login(@_);
}

sub list_cats {
	require Farsi;
	return Farsi::list_cats(@_);
}

sub list_authors {
	require Farsi;
	return Farsi::list_authors(@_);
}

sub feedback {
	require Farsi;
	return Farsi::feedback(@_);
}

sub listblog_tem {
	require Farsi;
	return Farsi::listblog_tem(@_);
}

sub pager_numbers {
	require Farsi;
	return Farsi::pager_numbers(@_);
}

sub mybuttons {
	require Farsi;
	return Farsi::mybuttons(@_);
}

sub batchedit_dates {
	require Farsi;
	return Farsi::batchedit_dates(@_);
}

sub searchreplace_tem {
	require Farsi;
	return Farsi::searchreplace_tem(@_);
}

sub myNewWeblog {
	require Farsi;
	return Farsi::myNewWeblog(@_);
}

## Param Changes

sub pager_params {
	require Farsi;
	return Farsi::pager_params(@_);
}

sub admin_params {
	require Farsi;
	return Farsi::admin_params(@_);
}

sub listblog_params {
	require Farsi;
	return Farsi::listblog_params(@_);
}

sub editcategories_params {
	require Farsi;
	return Farsi::editcategories_params(@_);
}

sub systemlistblog_params {
	require Farsi;
	return Farsi::systemlistblog_params(@_);
}

sub listauthor_params {
	require Farsi;
	return Farsi::listauthor_params(@_);
}

sub commentertable_params {
	require Farsi;
	return Farsi::commentertable_params(@_);
}

sub listtags_params {
	require Farsi;
	return Farsi::listtags_params(@_);
}

sub editentry_params {
	require Farsi;
	return Farsi::editentry_params(@_);
}

sub editcomment_params {
	require Farsi;
	return Farsi::editcomment_params(@_);
}

sub searchreplace_params {
	require Farsi;
	return Farsi::searchreplace_params(@_);
}

sub rebuilding_params {
	require Farsi;
	return Farsi::rebuilding_params(@_);
}
##################
sub keyboard_lang {
	require Farsi;
	return Farsi::keyboard_lang(@_);
}
##################
sub _CMSPreSave_blog {
	require Farsi;
	return Farsi::_CMSPreSave_blog(@_);
}
##################
sub _relative_date {
	require Farsi;
	return Farsi::_relative_date(@_);
}

sub _format_ts {
	require Farsi;
	return Farsi::_format_ts(@_);
}

sub _get_newsbox_content {
	require Farsi;
	return Farsi::_get_newsbox_content(@_);
}
##################
sub _save_entry {
	require Farsi;
	return Farsi::_save_entry(@_);
}

sub _save_entries {
	require Farsi;
	return Farsi::_save_entries(@_);
}

sub _search_replace {
	require Farsi;
	return Farsi::_search_replace(@_);
}

1;