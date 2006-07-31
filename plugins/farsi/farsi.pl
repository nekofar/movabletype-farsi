# Copyright 2005-2006 Aziz Ashofte. This code cannot be redistributed without
# permission from the author.  For more information, you can contact ashofteh@gmail.com
# for more information about this plugin visit: 
# http://movabletype.ir/plugins/farsi
#for more information about the author visit:
# http://aziza.ir
# Last edited: July 11, 2006

package MT::Plugin::Farsi;

use strict;
use JalaliEX;
use vars qw( $VERSION );
use vars qw( %Languages );
use MT::I18N qw(encode_text);
$VERSION = '۱.۵ بتا ۱';

require MT;
require MT::Plugin;
require MT::App::CMS;
use MT::Util;

my $plugin = {
	name                   => "<MT_TRANS phrase=\"MT-Farsi\">",
	description            => "<MT_TRANS phrase=\"Adding some right to left features and preparing MT for publishing in Persian.\"> <br /> برای تغییر زبان به پروفايل خود مراجعه کنید",
	version                => $VERSION,
	author_name            => "<MT_TRANS phrase=\"Aziz Ashofte\">",
	author_link            => 'http://aziza.ir',
	plugin_link            => 'http://www.movabletype.ir/',
	doc_link               => 'http://www.movabletype.ir/plugins/farsi',
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
#MT->add_callback('MT::App::CMS::AppTemplateSource.header'		  , 9, $plugin, \&keyboard_lang);
#MT->add_callback('MT::App::CMS::AppTemplateSource.entry_table'	  , 9, $plugin, \&entrytable_template);
#MT->add_callback('MT::App::CMS::AppTemplateSource.entry_actions'  , 9, $plugin, \&entry_submit_buttons);
MT->add_callback('MT::App::CMS::AppTemplateSource.cfg_feedback'	  , 9, $plugin, \&feedback);
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_blog'	  , 9, $plugin, \&myNewWeblog);
MT->add_callback('MT::App::CMS::AppTemplateSource.pager'		  , 9, $plugin, \&pager_numbers);
MT->add_callback('MT::App::CMS::AppTemplateSource.edit_entry'	  , 8, $plugin, \&mybuttons);
MT->add_callback('MT::App::CMS::AppTemplateSource.login'		  , 8, $plugin, \&login);
MT->add_callback('MT::App::CMS::AppTemplateSource.list_blog'	  , 9, $plugin, \&listblog_tem);
MT->add_callback('MT::App::CMS::AppTemplateParam'				  , 9, $plugin, \&pager_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.admin'			  , 9, $plugin, \&admin_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_tags'		  , 9, $plugin, \&listtags_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_blog'		  , 9, $plugin, \&listblog_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.list_author'	  , 9, $plugin, \&listauthor_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.system_list_blog', 9, $plugin, \&systemlistblog_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_comment'    , 9, $plugin, \&editcomment_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_ping'		  , 9, $plugin, \&editcomment_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_entry'	  , 9, $plugin, \&editentry_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.edit_categories' , 9, $plugin, \&editcategories_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.search_replace'  , 9, $plugin, \&searchreplace_params);
MT->add_callback('MT::App::CMS::AppTemplateParam.rebuilding'      , 9, $plugin, \&rebuilding_params);

MT->add_callback('CMSPreSave.blog', 9, $plugin, \&_CMSPreSave_blog);
MT->add_callback('CMSPreSave.entry', 9, $plugin, \&_CMSPreSave_entry);
#MT->add_callback('DefaultTemplateFilter', 9, $plugin, \&_Default_Template_Filter);

############################################################
my $language_symbol;
{
	my $my_lang = $plugin->get_config_value('fa_def_lang');
	if (!$my_lang) {$language_symbol = 'en_us';} else {$language_symbol = 'fa';}
	use MT::ConfigMgr;
	MT::ConfigMgr->instance->DefaultLanguage($language_symbol);
	MT->set_language($language_symbol);
	
	my $is_j = $plugin->get_config_value('jalali_enabled');	
	if ($is_j) {
		local $SIG{__WARN__} = sub {  }; 
		*MT::App::CMS::format_ts = \&_format_ts;
		*MT::App::CMS::relative_date = \&_relative_date;
	}
}

{
	local $SIG{__WARN__} = sub {  }; 
	*MT::App::CMS::get_newsbox_content = \&_get_newsbox_content;
}
############################################################

sub system_template {
 my $author =  MT->instance->user;
 my $AID =  $author->id;
  my $tmpl = <<EOT;
<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px; width:100%">
	<div class="field" style="float: right;	margin: 0;width:100% ">
	در صورتی که مايليد زبان سيستم را تغيير دهيد به <a href="<TMPL_VAR NAME=MT_URL>?__mode=view&amp;_type=author&amp;id=$AID">پروفايل</a> خود مراجعه کرده و زبان مورد نظر خود را انتخاب کنيد. 
دقت کنيد که غير فعال کردن اين پلاگين باعث تغيير در زبان سيستم نخواهد شد. 
	</div>
</div>
<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;">زبان پیش‌فرض سیستم:</div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
		<ul>
			<li><label><input type="radio" value="1" name="fa_def_lang" id="fa_def_lang" class="cb" <TMPL_IF NAME="FA_DEF_LANG">checked="checked"</TMPL_IF> /> فارسی</label></li>
			<li><label><input type="radio" value="0" name="fa_def_lang" id="fa_def_lang" class="cb" <TMPL_UNLESS NAME="FA_DEF_LANG">checked="checked"</TMPL_UNLESS> /> English</label></li>
		</ul>
	<p>زبان پیش‌فرض سیستم در موقع ورود به سیستم و یا برای نمایش خطاها کاربرد دارد.</p>
	</div>
</div>

<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;">نحوه نمایش تاریخ:</div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
		<ul>
			<li><label><input type="radio" value="1" name="jalali_enabled" id="jalali_enabled" class="cb" <TMPL_IF NAME="JALALI_ENABLED">checked="checked"</TMPL_IF> /> هجری شمسی</label></li>
			<li><label><input type="radio" value="0" name="jalali_enabled" id="jalali_enabled" class="cb" <TMPL_UNLESS NAME="JALALI_ENABLED">checked="checked"</TMPL_UNLESS> /> میلادی</label></li>
		</ul>
	<p>نحوه نمایش تاریخ در داخل سیستم مووبل‌تایپ، که می‌تواند شمسی یا میلادی باشد.</p>
	</div>
</div>

<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;"></div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
		<ul>
			<li><label><input type="checkbox" value="1" name="farsiJS_enabled" id="farsiJS_enabled" class="cb" <TMPL_IF NAME="FARSIJS_ENABLED">checked="checked"</TMPL_IF> /> امکانات فارسی نویسی</label></li>
		</ul>
	<p>برای آنها که فارسی روی کامپیوترشان نصب نیست.</p>
	</div>
</div>
EOT
}

############################################################

sub general_amendments {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {

##  Help Signs
	my $old = qq{class="help">?</a>};
	$old = quotemeta($old);	
	my $new = qq{class="help">؟</a>};
	$$template =~ s/$old/$new/g;

## rtl related images
	$$template =~ s/related.gif/related-right.gif/g;

## keyboard lang 

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
	my ($cb, $app, $template) = @_;
	my $old = qq{</body>};
	$old = quotemeta($old);	
	my $new = <<HTML;
<div id="cpf" style="display:none;">
<b>&#1606;&#1587;&#1582;&#1607; <TMPL_VAR NAME=MT_VERSION></b>
&copy; &#1581;&#1602; &#1578;&#1575;&#1604;&#1610;&#1601; &#1634;&#1632;&#1632;&#1633;-&#1634;&#1632;&#1632;&#1782;
 &#1705;&#1605;&#1662;&#1575;&#1606;&#1740; Six Apart. &#1578;&#1605;&#1575;&#1605;&#1740; 
 &#1581;&#1602;&#1608;&#1602; &#1605;&#1581;&#1601;&#1608;&#1592; &#1575;&#1587;&#1578;.
 <br /> &#1578;&#1605;&#1575;&#1605; &#1581;&#1602;&#1608;&#1602; &#1606;&#1587;&#1582;&#1607; &#1601;&#1575;&#1585;&#1587;&#1740; 
 &#1605;&#1578;&#1593;&#1604;&#1602; &#1575;&#1587;&#1578; &#1576;&#1607; <a href="http://movabletype.ir">
 &#1608;&#1576; &#1587;&#1575;&#1740;&#1578; &#1605;&#1608;&#1608;&#1576;&#1604; &#1578;&#1575;&#1740;&#1662; 
 &#1601;&#1575;&#1585;&#1587;&#1740;</a>.
</div>
</body>
HTML
	$$template =~ s/$old/$new/;
}

sub login {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	my $cfg = $app->{cfg};
    if ($cfg->DefaultLanguage eq 'fa') {
		my $old = qq{<MT_TRANS phrase="Remember me?"> <input type="checkbox" name="remember" value="1" />};
		$old = quotemeta($old);
		my $new = qq{<input type="checkbox" name="remember" value="1" /> <MT_TRANS phrase="Remember me?">};
		$$template =~ s/$old/$new/;	
}}

sub list_cats {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$$template =~ s/padding-left/padding-right/g;
			$$template =~ s/margin-left/display:block;margin-right/g;
			$$template =~ s/align="right"/align="left"/;
}}}

sub list_authors {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$$template =~ s/<MT_TRANS phrase="URL">/URL/;
}}}

# sub entrytable_template {
	# my ($cb, $app, $template) = @_;
	# my $author = $app->{author};
	# if ($author) {
		# if  ($author->preferred_language eq 'fa')  {
			# my $old = qq{<input name="created_on_<TMPL_VAR NAME=ID>" value="<TMPL_VAR NAME=CREATED_ON_TIME_FORMATTED>" />};
			# $old = quotemeta($old);
			# my $new = qq{<input name="fa_created_on_<TMPL_VAR NAME=ID>" value="<TMPL_VAR NAME=CREATED_ON_TIME_FORMATTED>" />};
			# $$template =~ s/$old/$new/;	
# }}}

sub feedback {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$$template =~ s/decrease.gif/decrease-fa.gif/;
			$$template =~ s/increase.gif/increase-fa.gif/;	
}}}

sub listblog_tem {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		my $old = qq{<MT_TRANS phrase="URL">: <a href="<TMPL_VAR NAME=SITE_URL>"><TMPL_VAR NAME=SITE_URL></a>};
		$old = quotemeta($old);
		my $new = qq{<a href="<TMPL_VAR NAME=SITE_URL>"><TMPL_VAR NAME=SITE_URL></a> :<MT_TRANS phrase="URL">};
		$$template =~ s/$old/$new/;	
}}}

sub pager_numbers {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="5">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۵">};
		$$template =~ s/$old/$new/;	
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="10">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۱۰">};
		$$template =~ s/$old/$new/;	
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="15">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۱۵">};
		$$template =~ s/$old/$new/;	
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="20">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۲۰">};
		$$template =~ s/$old/$new/;	
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="75">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۷۵">};
		$$template =~ s/$old/$new/;	
		my $old = qq{<MT_TRANS phrase="[quant,_1,row]" params="125">};
		$old = quotemeta($old);
		my $new = qq{<MT_TRANS phrase="[quant,_1,row]" params="۱۲۵">};
		$$template =~ s/$old/$new/;		
}}}

sub mybuttons {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $old = qq{<div class="field-buttons-resizing">};
			$old = quotemeta($old);
			my $new = <<HTML;
<div  class="field-buttons-resizing">
<script type="text/javascript">
with (document) {
write('<a title="<MT_TRANS phrase="Right to Left">" href="#" onclick="rtl(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/formatting-icons/field-rtl.gif" alt="<MT_TRANS phrase="Right to Left">" width="26" height="19" /></a>');
write('<a title="<MT_TRANS phrase="Left to Right">" href="#" onclick="ltr(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/formatting-icons/field-ltr.gif" alt="<MT_TRANS phrase="Left to Right">" width="26" height="19" /></a>');}
</script>
HTML
			$$template =~ s/$old/$new/;
			
			my $old = qq{<div class="field-buttons-resizing">};
			$old = quotemeta($old);
			my $new = <<HTML;
<div  class="field-buttons-resizing">
<script type="text/javascript">
with (document) {
write('<a title="<MT_TRANS phrase="Right to Left">" href="#" onclick="rtl(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/formatting-icons/field-rtl.gif" alt="<MT_TRANS phrase="Right to Left">" width="26" height="19" /></a>');
write('<a title="<MT_TRANS phrase="Left to Right">" href="#" onclick="ltr(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/formatting-icons/field-ltr.gif" alt="<MT_TRANS phrase="Left to Right">" width="26" height="19" /></a>');}
</script>
HTML
			$$template =~ s/$old/$new/;
			
			my $old = <<MATN;
<div id="edit-entry">
MATN
			my $new = <<MATN;
<div id="edit-entry">
<script type="text/javascript">
<!--
function Right (myobj){
    myobj.style.textAlign = "right";
    myobj.focus();
}
function Left (myobj){
    myobj.style.textAlign = "left";
    myobj.focus();
}
function ltr (myobj){
    myobj.style.direction = "ltr";
    myobj.focus();
}
function rtl (myobj){
    myobj.style.direction = "rtl";
    myobj.focus();
}
//-->
</script>
MATN
			$$template =~ s/$old/$new/;	
			
## Jalali Date
			my $old = qq{<span><TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML></span>};
			$old = quotemeta($old);
			my $new = <<HTML;
<span style="display:none;"><TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML></span>
<span><TMPL_VAR NAME=CREATED_ON_FORMATTED_FA></span>
HTML
			$$template =~ s/$old/$new/g;

			my $old = qq{<input name="created_on_manual" id="created_on_manual" style="display: inline" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />};
			$old = quotemeta($old);
			my $new = <<HTML;
<input name="created_on_manual" id="created_on_manual_en" style="display: none" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />
<input name="created_on_manual_fa" id="created_on_manual" style="display: inline" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED_FA>" />			
HTML
			$$template =~ s/$old/$new/;	

			my $old = qq{<input name="created_on_manual" id="created_on_manual" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />};
			$old = quotemeta($old);
			my $new = <<HTML;
<input style="display:none;" name="created_on_manual" id="created_on_manual_en" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />
<input name="created_on_manual_fa" id="created_on_manual" tabindex="9" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED_FA>" />
HTML
			$$template =~ s/$old/$new/;		
			
			my $old = qq{<input name="created_on_manual" id="created_on_manual" tabindex="4" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />};
			$old = quotemeta($old);
			my $new = <<HTML;
<input style="display:none;" name="created_on_manual" id="created_on_manual_en" tabindex="4" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED ESCAPE=HTML>" />
<input name="created_on_manual_fa" id="created_on_manual" tabindex="4" value="<TMPL_VAR NAME=CREATED_ON_FORMATTED_FA>" />
HTML
			$$template =~ s/$old/$new/;		
##			
			my $old = qq{<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>js/tc/tagcomplete.js"></script>};
			$old = quotemeta($old);
			my $new = <<HTML;
<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>js/tc/tagcomplete.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>plugins/Farsi/js/jalali-cal.js"></script>
<script type="text/javascript">
function setDate() {
	//var el = getByID('created_on_manual');
	//var mydate = el.value;
	//mydate = english_number(mydate);
	//document.write(mydate);
	//document.write(mydate.length);
	// regular expression for matching the format
	// farsi to english function
	// sub string
	// jalali to g convert
	// setting up the new date 
	// 
}
</script>
HTML
			$$template =~ s/$old/$new/;					
##			
	
}}}

sub entry_submit_buttons {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $old = qq{<input accesskey="s" type="button" value="<MT_TRANS phrase="Save">" title="<MT_TRANS phrase="Save this entry (s)">" onclick="clearDirty(); submitForm(this.form, 'save_entry'); return true" />};
			$old = quotemeta($old);
			my $new = <<HTML;
<input accesskey="s" type="button" value="<MT_TRANS phrase="Save">" title="<MT_TRANS phrase="Save this entry (s)">" onclick="setDate(); clearDirty(); submitForm(this.form, 'save_entry'); return true" />			
HTML
			$$template =~ s/$old/$new/;		
}}}

############################################################

sub myNewWeblog {
	my ($cb, $app, $template) = @_;
	my $old = qq{</fieldset>};
	$old = quotemeta($old);	
	my $new = <<HTML;
<TMPL_IF NAME=NEW_OBJECT>
<div class="setting">
  <div class="label"><label for="fa_temp_type"><MT_TRANS phrase="Template layout:"></label></div>
	<div class="field">
		<ul>
			<li><label><input type="radio" value="rtl" name="fa_temp_type" id="fa_temp_type" class="cb" /> <MT_TRANS phrase="Farsi (Right to Left)"></label></li>
			<li><label><input type="radio" value="ltr" name="fa_temp_type" id="fa_temp_type" class="cb" /> <MT_TRANS phrase="English (Left to Right)"></label></li>
		</ul>
	<p><MT_TRANS phrase="Define the layout of default templates. If you choose right to left, default template texts will be translated to Farsi."></p>
	</div>
</div>
</TMPL_IF>
</fieldset>
HTML
	$$template =~ s/$old/$new/;
}

############################################################

sub _CMSPreSave_blog {
  my $eh = shift;
  my ($app, $obj) = @_;
  $obj->language('en');
  if ($app->{'query'}->param("fa_temp_type") eq 'rtl') {
		require MT::FileMgr;
		my $filemgr = MT::FileMgr->new('Local')
			or return $app->error(MT::FileMgr->errstr);
		my $url = $app->base.$app->path .'default_templates';
		my $user_agent = $app->new_ua;
		my $trans_request = HTTP::Request->new( GET => $url."/stylesheet-fa.tmpl" ); 
		my $trans_response = $user_agent->request($trans_request);    
	
		defined($filemgr->put_data( $trans_response->content, MT->instance->config('WeblogTemplatesPath').'/stylesheet.tmpl', 'upload' )) 
			or die "MTFarsi Plugin is unable to replace the english stylesheet with a farsi version.".$filemgr->errstr;

	} else {
	
		require MT::FileMgr;
		my $filemgr = MT::FileMgr->new('Local')
			or return $app->error(MT::FileMgr->errstr);
		my $url = $app->base.$app->path .'default_templates';
		my $user_agent = $app->new_ua;
		my $trans_request = HTTP::Request->new( GET => $url."/stylesheet-en.tmpl" ); 
		my $trans_response = $user_agent->request($trans_request);    
		defined($filemgr->put_data( $trans_response->content, MT->instance->config('WeblogTemplatesPath').'/stylesheet.tmpl', 'upload' )) 
			or die "MTFarsi Plugin is unable to replace the Farsi stylesheet with the original version.".$filemgr->errstr;
  }
}

sub _CMSPreSave_entry {
	# my $eh = shift;
	# my ($app, $obj) = @_;
	# my $q = $app->param;
	# my $tempvar = $q->param('created_on_manual') || '';
	# if ($tempvar!='') { 
		# $tempvar =~ s/۰/0/g;
		# $tempvar =~ s/۱/1/g;
		# $tempvar =~ s/۲/2/g;
		# $tempvar =~ s/۳/3/g;
		# $tempvar =~ s/۴/4/g;
		# $tempvar =~ s/۵/5/g;
		# $tempvar =~ s/۶/6/g;
		# $tempvar =~ s/۷/7/g;
		# $tempvar =~ s/۸/8/g;
		# $tempvar =~ s/۹/9/g;
		# $tempvar =~ s/[-: ]//g;	
		# $tempvar = j2g_ts($tempvar);
		# my $g_y  = substr($tempvar,0,4);
		# my $g_m  = substr($tempvar,4,2);
		# my $g_d  = substr($tempvar,6,2);
		# my $hour = substr($tempvar,8,2);
		# my $min  = substr($tempvar,10,2);
		# my $sec  = substr($tempvar,12,2);
		# $tempvar = $g_y .'-'.$g_m.'-'.$g_d.' '.$hour.':'.$min.':'.$sec;
		# $obj->created_on($tempvar); 
	# }
	return 1;
}

############################################################

sub pager_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$param->{'list_total'} = farsi_number($param->{'list_total'});
			$param->{'list_start'} = farsi_number($param->{'list_start'});
			$param->{'list_end'} = farsi_number($param->{'list_end'});
}}}

sub admin_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
	$param->{'blog_count'} = farsi_number($param->{'blog_count'});
	$param->{'author_count'} = farsi_number($param->{'author_count'});
	$param->{'active_author_count'} = farsi_number($param->{'active_author_count'});
	$param->{'entry_count'} = farsi_number($param->{'entry_count'});
	$param->{'comment_count'} = farsi_number($param->{'comment_count'});
	$param->{'trackback_count'} = farsi_number($param->{'trackback_count'});

	$param->{'news_html'} = get_farsi_newsbox_content()||'';
}}}

sub listblog_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		$param->{'news_html'} = get_farsi_newsbox_content()||'';
		fa_blogmaintable(@$param{'blog_loop'} );
}}}
sub fa_blogmaintable {
	my ($blogs) = @_;
	for my $blog_row (@$blogs) {
		$blog_row->{'num_entries'} = farsi_number($blog_row->{'num_entries'});		
		$blog_row->{'num_comments'} = farsi_number($blog_row->{'num_comments'});
		$blog_row->{'num_pings'} = farsi_number($blog_row->{'num_pings'});
	}
}

sub editcategories_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		$param->{'news_html'} = get_farsi_newsbox_content()||'';
		fa_cattable(@$param{'category_loop'} );
}}}
sub fa_cattable {
	my ($cats) = @_;
	for my $cat_row (@$cats) {
		$cat_row->{'category_entrycount'} = farsi_number($cat_row->{'category_entrycount'});		
		$cat_row->{'category_tbcount'} = farsi_number($cat_row->{'category_tbcount'});
	}
}

sub systemlistblog_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			fa_blogtable(@$param{'blog_loop'} );
}}}
sub fa_blogtable {
	my ($blogs) = @_;
	for my $blog_row (@$blogs) {
		$blog_row->{'num_entries'} = farsi_number($blog_row->{'num_entries'});		
		$blog_row->{'num_comments'} = farsi_number($blog_row->{'num_comments'});
		$blog_row->{'num_pings'} = farsi_number($blog_row->{'num_pings'});
		$blog_row->{'num_authors'} = farsi_number($blog_row->{'num_authors'});
	}
}

sub listauthor_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			fa_authortable(@$param{'object_loop'} );
}}}
sub fa_authortable {
	my ($authors) = @_;
	for my $author_row (@$authors) {
		$author_row->{'entry_count'} = farsi_number($author_row->{'entry_count'});		
		$author_row->{'last_entry_relative'} = farsi_number($author_row->{'last_entry_relative'});		
	}
}

sub commentertable_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			fa_commentertable(@$param{'object_loop'} );
}}}
sub fa_commentertable {
	my ($commenters) = @_;
	for my $commenter_row (@$commenters) {
		$commenter_row->{'comment_count'} = farsi_number($commenter_row->{'comment_count'});		
		$commenter_row->{'most_recent_relative'} = farsi_number($commenter_row->{'most_recent_relative'});		
	}
}

sub listtags_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			fa_tagtable($param->{tag_table}[0]{object_loop});
}}}
sub fa_tagtable {
	my ($tags) = @_;
	for my $tag_row (@$tags) {
		$tag_row->{'tag_count'} = farsi_number($tag_row->{'tag_count'});		
	}
}

sub editentry_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
	$param->{'num_comments'} = farsi_number($param->{'num_comments'});
	$param->{'num_pings'} = farsi_number($param->{'num_pings'});
	## date
	if (!$param->{'id'}) {
		my $tempvar = $param->{'created_on_formatted'};
		$tempvar =~ s/[-: ]//g;	
		$tempvar = g2jstrftime( '%y/%e/%d %H:%M:%S' , $tempvar );
		$tempvar = farsi_number($tempvar);
		$param->{'created_on_formatted_fa'} = $tempvar;
	} else {
		my $tempvar = $param->{'created_on_formatted'};
		$tempvar =~ s/۰/0/g;
		$tempvar =~ s/۱/1/g;
		$tempvar =~ s/۲/2/g;
		$tempvar =~ s/۳/3/g;
		$tempvar =~ s/۴/4/g;
		$tempvar =~ s/۵/5/g;
		$tempvar =~ s/۶/6/g;
		$tempvar =~ s/۷/7/g;
		$tempvar =~ s/۸/8/g;
		$tempvar =~ s/۹/9/g;
		$tempvar =~ s/[-: ]//g;	
		$tempvar = j2g_ts($tempvar);
		my $g_y = substr($tempvar,0,4);
		my $g_m = substr($tempvar,4,2);
		my $g_d = substr($tempvar,6,2);
		my $hour = substr($tempvar,8,2);
		my $min = substr($tempvar,10,2);
		my $sec = substr($tempvar,12,2);
		$tempvar = $g_y .'-'.$g_m.'-'.$g_d.' '.$hour.':'.$min.':'.$sec;
		$param->{'created_on_formatted'} = $tempvar;
	    $tempvar =~ s/[-: ]//g;	
		$tempvar = g2jstrftime( '%y/%e/%d %H:%M:%S' , $tempvar );
		$tempvar = farsi_number($tempvar);
		$param->{'created_on_formatted_fa'} = $tempvar;
		
	}
}}}

sub editcomment_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $tempvar = $param->{'created_on_day_formatted'};
			$tempvar =~ s/۰/0/g;
			$tempvar =~ s/۱/1/g;
			$tempvar =~ s/۲/2/g;
			$tempvar =~ s/۳/3/g;
			$tempvar =~ s/۴/4/g;
			$tempvar =~ s/۵/5/g;
			$tempvar =~ s/۶/6/g;
			$tempvar =~ s/۷/7/g;
			$tempvar =~ s/۸/8/g;
			$tempvar =~ s/۹/9/g;
			$tempvar =~ s/[\/: ]//g;	
			$tempvar = $tempvar.'000000';
			$tempvar = j2g_ts($tempvar);
			my $g_y = substr($tempvar,0,4);
			my $g_m = substr($tempvar,4,2);
			my $g_d = substr($tempvar,6,2);
			$tempvar = $g_y .'.'.$g_m.'.'.$g_d;
			$param->{'created_on_day_formatted'} = $tempvar;
			$param->{'junk_score'} = farsi_number($param->{'junk_score'});
}}}

sub searchreplace_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		my $dfy = $param->{'datefrom_year'};
		my $dfm = $param->{'datefrom_month'};
		my $dfd = $param->{'datefrom_day'};
		my $dty = $param->{'dateto_year'};
		my $dtm = $param->{'dateto_month'};
		my $dtd = $param->{'dateto_day'};
		my $df = $dfy.$dfm.$dfd.'000000';
		my $dt = $dty.$dtm.$dtd.'000000';
		$param->{'datefrom_year'} = farsi_number(g2jstrftime('%Y',$df)) if ($param->{'datefrom_year'});
		$param->{'datefrom_month'} = farsi_number(g2jstrftime('%m',$df)) if ($param->{'datefrom_month'}); 
		$param->{'datefrom_day'} = farsi_number(g2jstrftime('%d',$df))  if ($param->{'datefrom_day'}); 
		$param->{'dateto_year'} = farsi_number(g2jstrftime('%Y',$dt)) if ($param->{'dateto_year'}); 
		$param->{'dateto_month'} = farsi_number(g2jstrftime('%m',$dt)) if ($param->{'dateto_month'}); 
		$param->{'dateto_day'} = farsi_number(g2jstrftime('%d',$dt)) if ($param->{'dateto_day'}); 
		##
		$param->{'limit'} = farsi_number($param->{'limit'});
		$param->{'count_matches'} = farsi_number($param->{'count_matches'});
}}}

sub rebuilding_params {
	my ($cb, $app, $param) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$param->{'indiv_range'} = farsi_number($param->{'indiv_range'});
}}}

############################################################

sub keyboard_lang {
	my ($cb, $app, $template) = @_;
		my $old = qq{<a href="<TMPL_VAR NAME=MT_URL>?__mode=view&amp;_type=author&amp;id=<TMPL_VAR NAME=AUTHOR_ID>"><TMPL_VAR NAME=AUTHOR_NAME></a>};
	$old = quotemeta($old);	
	my $new = <<HTML;
<a href="<TMPL_VAR NAME=MT_URL>?__mode=view&amp;_type=author&amp;id=<TMPL_VAR NAME=AUTHOR_ID>"><TMPL_VAR NAME=AUTHOR_NAME></a>
&nbsp;|&nbsp;
<script type="text/javascript">
function show_keyboard_layout() {
	var myimg = document.getElementById("key_layout");
	myimg.style.display="block";
}

function hide_keyboard_layout() {
	var myimg = document.getElementById("key_layout");
	myimg.style.display="none";
}

function highlight_image() {
	var myimg = document.getElementById("lang_switch");
	var test = StaticURI . "plugins/Farsi/images/lang-fa-1.gif";
 if (myimg.src == test) {
     myimg.src = StaticURI . "plugins/Farsi/images/lang-fa-2.gif";
 } else {
     myimg.src = StaticURI . "plugins/Farsi/images/lang-en-2.gif";
 }
}
</script>
<img id="key_switch" style="margin-top:-8px;cursor:point;_cursor:hand;" src="<TMPL_VAR NAME=STATIC_URI>plugins/Farsi/images/keyboard.gif"  title="<MT_TRANS phrase="Show Keyboard layout">" onclick="show_keyboard_layout()">
<img id="lang_switch" style="margin-top:-8px;cursor:point;_cursor:hand;" src="<TMPL_VAR NAME=STATIC_URI>plugins/Farsi/images/lang-fa-1.gif" title="<MT_TRANS phrase="Change input language">" onclick="change_lang()" onmousemove="highlight_image()">
<img id="key_layout" style="display:none;position:absolute;top:50px;right:auto;left:auto;z-index:220;" src="<TMPL_VAR NAME=STATIC_URI>plugins/Farsi/images/key-layout.png" onclick="hide_keyboard_layout()">
HTML
	$$template =~ s/$old/$new/;
}

############################################################

sub _relative_date {
    my ($ts1, $ts2, $blog, $fmt) = @_;

    ##TBD: Fix this
    my $ts = $ts1;
    $ts1 = MT::Util::ts2epoch($blog, $ts1);
    return unless $ts1;

    my $future = 0;
    my $delta = $ts2 - $ts1;
    if ($delta < 0) {
        $future = 1;
        $delta = $ts1 - $ts2;
    }
    if ($delta <= 60) {
        $future ? MT->translate("Less than 1 minute from now") : MT->translate("Less than 1 minute ago");
    } elsif ($delta <= 86400) {
        ##less than 1 day
        my $hours = int($delta / 3600);
		if ($hours) {$hours = farsi_number($hours);}
        my $min = int(($delta % 3600) / 60);
		if ($min) {$min = farsi_number($min);}
        my $result;
        if ($hours && $min) {
            $result = $future ? MT->translate("[quant,_1,hour], [quant,_2,minute] from now", $hours, $min) : MT->translate("[quant,_1,hour], [quant,_2,minute] ago", $hours, $min);
        } elsif ($hours) {
            $result = $future ? MT->translate("[quant,_1,hour] from now", $hours) : MT->translate("[quant,_1,hour] ago", $hours);
        } elsif ($min) {
            $result = $future ? MT->translate("[quant,_1,minute] from now", $min) : MT->translate("[quant,_1,minute] ago", $min);
        }
        $result;
    } elsif ($delta <= 604800) {
        ##less than 1 week
        my $days = int($delta / 86400);
		if ($days) {$days = farsi_number($days);}
        my $hours = int(($delta % 86400) / 3600);
        if ($hours) {$hours = farsi_number($hours);}
		my $result;
        if ($days && $hours) {
            $result = $future ? MT->translate("[quant,_1,day], [quant,_2,hour] from now", $days, $hours) : MT->translate("[quant,_1,day], [quant,_2,hour] ago", $days, $hours);
        } elsif ($days) {
            $result = $future ? MT->translate("[quant,_1,day] from now", $days) : MT->translate("[quant,_1,day] ago", $days);
        } elsif ($hours) {
            $result = $future ? MT->translate("[quant,_1,hour] from now", $hours) : MT->translate("[quant,_1,hour] ago", $hours);
        }
        $result;
    } else {
        $fmt ? _format_ts($fmt, $ts) : "";
    }
}

sub _format_ts {
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
        $format = $Languages{$lang}[3] || "%B %e, %Y %l:%M %p";
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
        $f{w} = MT::Util::wday_from_ts(@ts[0..2]);
        $f{j} = MT::Util::yday_from_ts(@ts[0..2]);
        $f{'y'} = substr $f{Y}, 2;
        $f{b} = MT::Util::substr_wref $L->[1][$f{'m'}-1] || '', 0, 3;
        $f{B} = $L->[1][$f{'m'}-1];
        if ($lang eq 'ja') {
            $f{a} = substr $L->[0][$f{w}] || '', 0, 8;
        } else {
            $f{a} = MT::Util::substr_wref $L->[0][$f{w}] || '', 0, 3;
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
        $f{Z} = '';
        $cache->{$ts . $lang} = \%f;
    }
    my $date_format = $Languages{$lang}->[4] || "%B %e, %Y";
    my $time_format = $Languages{$lang}->[5] || "%l:%M %p";
    $format =~ s!%x!$date_format!g;
    $format =~ s!%X!$time_format!g;
    ## This is a dreadful hack. I can't think of a good format specifier
    ## for "%B %Y" (which is used for monthly archives, for example) so
    ## I'll just hardcode this, for Japanese dates.
    if ($lang eq 'ja') {
        $format =~ s!%B %Y!$Languages{$lang}->[6]!g;
    }
    my $jformat = g2jstrftime( $format , $ts ); ###Aziz
	$format =~ s!%(\w)!$f{$1}!g if defined $format;
	$jformat = farsi_number($jformat); ###Aziz
	$jformat =~ s/\./\//g;	###Aziz
    $jformat;
}

sub _get_newsbox_content {
    my $app = shift;
	get_farsi_newsbox_content();
    my $newsbox_url = $app->config('NewsboxURL');
    if ($newsbox_url && $newsbox_url ne 'disable') {
        my $NEWSCACHE_TIMEOUT = 60 * 60 * 24;
        require MT::Session;
        my ($news_object) = ("");
        my $retries = 0;
        $news_object = MT::Session->load({ id => 'NW' });
        if ($news_object &&
            ($news_object->start() < (time - $NEWSCACHE_TIMEOUT))) {
            $news_object->remove;
            $news_object = undef;
        }
        return encode_text($news_object->data(), 'utf-8', undef)
            if ($news_object);

        my $ua = $app->new_ua;
        return unless $ua;
        $ua->max_size(undef) if $ua->can('max_size');

        my $req = new HTTP::Request(GET => $newsbox_url);
        my $resp = $ua->request($req);
        return unless $resp->is_success();
        my $result = $resp->content();
        if ($result) {
            $news_object = MT::Session->new();
            $news_object->set_values({id => 'NW',
                                      kind => 'NW',
                                      start => time(),
                                      data => $result});
            $news_object->save();
            $result = encode_text($result, 'utf-8', undef);
        }
        return $result;
    }
}

sub get_farsi_newsbox_content {
    my $newsbox_url = "http://www.movabletype.ir/mtfarsi.news";
    use MT::ConfigMgr;
		my $path = MT::ConfigMgr->instance->NewsboxURL;
    if ($path ne 'disable') {
        my $NEWSCACHE_TIMEOUT = 60 * 60 * 72;
        require MT::Session;
        my ($news_object) = ("");
        my $retries = 0;
        $news_object = MT::Session->load({ id => 'FNW' });
        if ($news_object &&
            ($news_object->start() < (time - $NEWSCACHE_TIMEOUT))) {
            $news_object->remove;
            $news_object = undef;
        }

        return $news_object->data()
            if ($news_object);

        eval { require LWP::UserAgent;
               require HTTP::Request;
           } or return;
        
        my $ua = new LWP::UserAgent(agent => 'Movable Type');
        my $req = new HTTP::Request(GET => $newsbox_url);
        my $resp = $ua->request($req);
        return unless $resp->is_success();
        my $result = $resp->content();
        
        if ($result) {
            $news_object = MT::Session->new();
            $news_object->set_values({id => 'FNW',
                                      kind => 'FNW',
                                      start => time(),
                                      data => $result});
            $news_object->save();
        }
        return $result;
    }
}

1;