# Copyright 2005-2006 Aziz Ashofte. This code cannot be redistributed without
# permission from the author.  For more information, you can contact ashofteh@gmail.com
# for more information about this plugin visit: 
# http://movabletype.ir/plugins/farsi
#for more information about the author visit:
# http://aziza.ir
# Last edited: 2005-12-24

package MT::Plugin::Farsi;

use strict;
use JalaliEX;
use FarsiUpdate;
use MT::Util;
use vars qw( $VERSION );
use vars qw( %Languages );

require MT;
require MT::Plugin;
require MT::App::CMS;

use MT::Util qw( start_end_day start_end_week start_end_period week2ymd iso2ts offset_time offset_time_list archive_file_for days_in wday_from_ts substr_wref);
$VERSION = '1.0';

my $plugin = {
	name                   => 'فارسی ساز',
	description            => 'مجموعه‌ای از امکانات فارسی برای مووبل تایپ',
	version                => $VERSION,
	author_name            => 'Aziz Ashofte',
	author_link            => 'http://aziza.ir',
	plugin_link            => 'http://www.movabletype.ir/',
	doc_link               => 'http://www.movabletype.ir/plugins/farsi',
	system_config_template => \&system_template,
  settings               => new MT::PluginSettings([
													['jalali_enabled', { Default => 1 }],
													['farsiJS_enabled', { Default => 0 }],
													['fa_def_lang', { Default => 1 }],
													['fa_schema_version', { Default => 100 }],
        ]),    
}; 
MT->add_plugin(new MT::Plugin($plugin));

my $language_symbol;
{
	local $SIG{__WARN__} = sub {  }; 
	*MT::Util::format_ts = \&_ext_format_ts;
	*MT::Template::Context::format_ts = \&_ext_format_ts;

	my $my_lang = $plugin->get_config_value('fa_def_lang');
	if (!$my_lang) {$language_symbol = 'en_us';} else {$language_symbol = 'fa';}
	use MT::ConfigMgr;
	MT::ConfigMgr->instance->DefaultLanguage($language_symbol);
	MT->set_language($language_symbol);

	my $is_j = $plugin->get_config_value('jalali_enabled');	
	if ($is_j) {
		local $SIG{__WARN__} = sub {  }; 
		*MT::App::CMS::format_ts = \&_format_ts;
	}
}

MT->add_callback('bigpapi::template', 9, $plugin, \&_template);
MT->add_callback('bigpapi::template::admin', 9, $plugin, \&_load_news);
MT->add_callback('bigpapi::template::list_blog', 9, $plugin, \&_load_news);
MT->add_callback('bigpapi::template::upload', 9, $plugin, \&_myupload);
MT->add_callback('bigpapi::template::cfg_feedback', 9, $plugin, \&_feedback);
MT->add_callback('bigpapi::template::edit_categories', 9, $plugin, \&_list_cats);
MT->add_callback('bigpapi::template::edit_entry', 11, $plugin, \&_mybuttons);
MT->add_callback('bigpapi::template::bm_entry', 9, $plugin, \&_mybookmark);
MT->add_callback('bigpapi::template::edit_blog', 9, $plugin, \&_myNewWeblog);
MT->add_callback('bigpapi::template::cfg_prefs', 9, $plugin, \&_cfg_lang);
MT->add_callback('bigpapi::template::upgrade', 9, $plugin, \&_upgrade);

MT->add_callback('CMSPreSave_blog', 9, $plugin, \&_CMSPreSave_blog);


sub system_template {
  my $tmpl = <<EOT;
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
	<p>نحوه نمایش تاریخ که می‌تواند شمسی یا میلادی باشد.</p>
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

<div class="setting" style="direction:rtl;text-align:right;font-family:tahoma;font-size:11px;">
	<div class="label" style="float: right;	width: 100px;	margin: 4px 5px 0 5px;	color: #333;	font-size: 11px;	font-weight: bold;	text-align: left;"></div>
	<div class="field" style="float: right;	width: 425px;	margin: 0;">
	<ul>
			<li><a style="text-decoration:none;" href="#" onclick="window.open('plugins/farsi/update-checker.cgi?__mode=check&version=<TMPL_VAR NAME=FA_SCHEMA_VERSION>&magic_token=<TMPL_VAR NAME=MAGIC_TOKEN>', 'rebuild', 'width=400,height=300,resizable=yes')" ><img style="margin:0px 0px -5px 4px;" src="<TMPL_VAR NAME=STATIC_URI>mt-static/images/nav_icons/mini/update.png" title="به روز رسانی" width="16" height="16"><strong>&nbsp;&nbsp;به روز رسانی</strong></a></li>
	</ul>
	<p>تنها با کلیک بر روی این لینک می‌توانید فارسی‌ساز خود را به جدیدترین نسخه ارتقا دهید.</p>
	</div>
</div>	
<input type="hidden" name="fa_schema_version" id="fa_schema_version" value="<TMPL_VAR NAME=FA_SCHEMA_VERSION>" />
EOT
}

sub _template {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	my $cfg = $app->{cfg};
	my $pre_lang;
	my $pro_lang;

	if ($author) {
	  if  ($author->preferred_language eq 'fa')  { $pre_lang = "right";$pro_lang = "left"; } else { $pre_lang = "left";$pro_lang = "right"; }
		my $JSkey = $plugin->get_config_value('farsiJS_enabled');
		if ($JSkey) {

			my $old = qq{<div id="topnav-img"><h1><img alt="Movable Type" src="<TMPL_VAR NAME=STATIC_URI>images/topnav-logo-popup.gif" width="204" height="66" border="0" /></h1></div>};
			$old = quotemeta($old);
			my $new = <<HTML;
<div id="topnav-img"><h1><img alt="Movable Type" src="<TMPL_VAR NAME=STATIC_URI>images/topnav-logo-popup.gif" width="204" height="66" border="0" /></h1></div>
<span style="position:absolute;top:45px;$pro_lang:5px;cursor:hand;cursor:point;">
<input id="LangButton" type="button" value="فارسی" onclick="en_fa(this);" style="margin-$pro_lang:5px;padding-$pro_lang:5px;background-color:#52829C;border:1px solid #21556B;color:white;width:51px;padding:1px 0px;cursor:hand;cursor:point;font-family:tahoma;font-size:11px;">
</span>
HTML
			$$template =~ s/$old/$new/;
			
			my $old = qq{<a href="<TMPL_VAR NAME=SCRIPT_URL>?__mode=system_list_blogs"><MT_TRANS phrase="System-wide listing"></a>};
			$old = quotemeta($old);
			my $new = <<HTML;
<a href="<TMPL_VAR NAME=SCRIPT_URL>?__mode=system_list_blogs"><MT_TRANS phrase="System-wide listing"></a>
</TMPL_IF>
</TMPL_IF>
</div>
<span style="position:absolute;top:45px;$pre_lang:706px;_$pre_lang:698px;cursor:hand;cursor:point;">
<input  id="LangButton" type="button" value="فارسی" onclick="en_fa(this);" style="background-color:#52829C;border:1px solid #21556B;color:white;width:51px;padding:1px 0px;cursor:hand;cursor:point;font-family:tahoma;">
</span>
<div>
<TMPL_IF>
<TMPL_IF>
HTML
			$$template =~ s/$old/$new/;

			my $old = qq{<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>mt.js"></script>};
			$old = quotemeta($old);
			my $new = <<HTML;
<script type="text/javascript" src="<TMPL_VAR NAME=STATIC_URI>mt.js"></script>
<SCRIPT language=javascript type=text/javascript>
// var labelCount = 0;
// var labelList  = new Object;
// var pageDepth  = 0;
// var path       = "";

// Set default values for toolbar states
var langState  = false;

//=============================================
var lastkey = 0 ;
var farsi = true ;
var s = new Array(32,33,34,35,36,37,1548,1711,41,40,215,43,1608,45,46,47,1776,1777,1778,1779,1780,1781,1782,1783,1784,1785,58,1705,44,61,46,1567,64,1616,1584,125,1609,1615,1609,1604,1570,247,1600,1548,47,8217,1583,215,1563,1614,1569,1613,1601,8216,123,1611,1618,1573,126,1580,1688,1670,94,1600,1662,1588,1584,1586,1740,1579,1576,1604,1575,1607,1578,1606,1605,1574,1583,1582,1581,1590,1602,1587,1601,1593,1585,1589,1591,1594,1592,60,124,62,1617)
var b = navigator.userAgent.toLowerCase() ;
var msie  = (b.indexOf('msie')>-1)  ? true : false ;
var gecko = (b.indexOf('gecko')>-1) ? true : false ;
var opera = (b.indexOf('opera')>-1) ? true : false ;
if (opera){
msie = false;
}

//=============================================

function convert(fld,e) {
        if (msie) {
            k = event.keyCode ;
            if (k>128) {
                alert("لطفا صفحه کلید را در حالت انگلیسی قراردهید") ;
                return false ;
            }
            if (farsi && k>32 && k<128) event.keyCode = s[k-32] ;
        }

        if (gecko) {
            k = e.which ;
 if (farsi && k>32 && k<128 && !e.ctrlKey && !e.altKey && !e.shiftKey && !e.metaKey) {
                    fld.value = fld.value + String.fromCharCode(s[k-32]) ;
                    return false ;
                }
                if (k>128) {
                        alert("لطفا صفحه کلید را در حالت انگلیسی قراردهید") ;
                        return false ;
                }
        }

        if (opera) {
            k = event.keyCode ;
            if (k>128) {
                alert("لطفا صفحه کلید را در حالت انگلیسی قراردهید") ;
                return false ;
            }
if (k>32 && k<128 && !event.ctrlKey && !event.altKey && !event.shiftKey && !event.metaKey) {
                    fld.value = fld.value + String.fromCharCode(s[k-32]) ;
                    return false ;
                }
        }
}




function applyLang() {
  //setPath();
  //preloadImage     = new Image();
  //preloadImage.src = path+"en.gif";
  loadLangState();
  (langState == true)  ?  en() : fa();

}

function fa() {
 var btn =  document.getElementById("LangButton"); 
  btn.value = "فارسی" ;
  langState = false;
  farsi = true;

saveLangState();
}

function en() {
  var btn =  document.getElementById("LangButton"); 
  btn.value = "English" ;
  langState = true;
  farsi = false;

saveLangState();
}

function saveLangState() {
	if (!farsi) {
		var ocontrol=document.getElementsByTagName('input');
		for (i=0;i<ocontrol.length;i++){ 
			if (ocontrol[i].type == "text") {
				ocontrol[i].style.direction="ltr";
				ocontrol[i].style.textAlign="left";
			}
		}
		var tcontrol=document.getElementsByTagName('textarea');
		for (i=0;i<tcontrol.length;i++){ 
			tcontrol[i].style.direction="ltr";
			tcontrol[i].style.textAlign="left";
		}

	} else {
		var ocontrol=document.getElementsByTagName('input');
		for (i=0;i<ocontrol.length;i++){ 
		   if (ocontrol[i].type == "text") {
				ocontrol[i].style.direction="rtl";
				ocontrol[i].style.textAlign="right";
			}
		}
		var tcontrol=document.getElementsByTagName('textarea');
		for (i=0;i<tcontrol.length;i++){ 
			tcontrol[i].style.direction="rtl";
			tcontrol[i].style.textAlign="right";
		}
	}
    

  // Serialise state variables
  var serialised = "fa:"   + ((langState  == true) ? "true" : "false");
  serialised = escape(serialised);  
  //alert(serialised);

  // Set cookie expiration date of 1 year
  var nextYear = new Date;
  nextYear.setFullYear(nextYear.getFullYear() + 1);

  // Store cookie in browser
  document.cookie = "language="+serialised+"; path=/ ; expires="+nextYear.toGMTString();
}

function loadLangState() {
  var cookie = document.cookie;
  var pos = cookie.indexOf("language=");
  if (pos != -1) {
    var start = pos + 9;
    var end   = cookie.indexOf(";",start);
    if (end == -1) end = cookie.length;
    var value = cookie.substring(start,end);
    value = unescape(value);

    var labels = new Array;
    labels = value.split(',');
    for (var id = 0; id < labels.length; id++) {
      var data = new Array;
      data = labels[id].split(':');
      if (data[0] == "fa")  langState  = (data[1] == "true") ? true : false;

    }
  } 
}

function en_fa(btn){
	farsi = !farsi ;
	langState = !langState;
	if (farsi) { btn.value = "فارسی" ; }
	else { btn.value = "English" ; }
	saveLangState();
}	



</SCRIPT>
HTML
			$$template =~ s/$old/$new/;
			
			my $old = qq{<body};
			$old = quotemeta($old);
			my $new = <<HTML;
<body onLoad="applyLang()"   
HTML
			$$template =~ s/$old/$new/g;
			
			my $old = qq{<input};
			$old = quotemeta($old);
			my $new = <<HTML;
<input onkeypress="return convert(this,event)"  
HTML
			$$template =~ s/$old/$new/g;
			
			my $old = qq{<textarea};
			$old = quotemeta($old);
			my $new = <<HTML;
<textarea onkeypress="return convert(this,event)"  
HTML
			$$template =~ s/$old/$new/g;	
		} #end if $JSKey
			
		if  ($author->preferred_language eq 'fa')  {
			$$template =~ s/styles.css/styles-fa.css/;
			$$template =~ s/topnav-logo.gif/topnav-logo-fa.gif/;		
			$$template =~ s/topnav-logo-popup.gif/topnav-logo-popup-fa.gif/;
			$$template =~ s/related.gif/related-right.gif/g;
			my $old = qq{Copyright &copy; 2001-2005 Six Apart. All Rights Reserved.};
			$old = quotemeta($old);	
			my $new = <<HTML;
حق تاليف &copy; ٢٠٠١-٢٠٠۶  کمپانی Six Apart. تمامی حقوق محفوظ است.<br /> تمام حقوق نسخه فارسی متعلق است به <a href="http://movabletype.ir">وب سایت مووبل تایپ فارسی</a>.
HTML
			$$template =~ s/$old/$new/;	
			
			my $old = qq{<b>Version <TMPL_VAR NAME=MT_VERSION></b>};
			$old = quotemeta($old);	
			my $new = <<HTML;
<b>نسخه <TMPL_VAR NAME=MT_VERSION></b>
HTML
			$$template =~ s/$old/$new/;

		} 
	} elsif ($cfg->DefaultLanguage eq 'fa') {
		$$template =~ s/styles.css/styles-fa.css/;
		$$template =~ s/topnav-logo.gif/topnav-logo-fa.gif/;
		$$template =~ s/topnav-logo-popup.gif/topnav-logo-popup-fa.gif/;
		my $old = qq{<MT_TRANS phrase="Remember me?"> <input type="checkbox" name="remember" value="1" />};
		$old = quotemeta($old);
		my $new = <<HTML;
<input type="checkbox" name="remember" value="1" /> <MT_TRANS phrase="Remember me?">
HTML
		$$template =~ s/$old/$new/;	
		
					my $old = qq{Copyright &copy; 2001-2005 Six Apart. All Rights Reserved.};
			$old = quotemeta($old);	
			my $new = <<HTML;
حق تاليف &copy; ٢٠٠١-٢٠٠۶  کمپانی Six Apart. تمامی حقوق محفوظ است.<br /> تمام حقوق نسخه فارسی متعلق است به <a href="http://movabletype.ir">وب سایت مووبل تایپ فارسی</a>.
HTML
			$$template =~ s/$old/$new/;	

			my $old = qq{<b>Version <TMPL_VAR NAME=MT_VERSION></b>};
			$old = quotemeta($old);	
			my $new = <<HTML;
<b>نسخه <TMPL_VAR NAME=MT_VERSION></b>
HTML
			$$template =~ s/$old/$new/;
	
		} # end if ($author->preferred_language eq 'fa')
}

sub _mybookmark {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {

			my $old = qq{<p style="float: left; width: 45%">};
			$old = quotemeta($old);	
			my $new = <<HTML;
<p style="float: right; width: 45%">
HTML
			$$template =~ s/$old/$new/;

			my $old = qq{<p style="float: right; width: 45%; margin-left: 10px">};
			$old = quotemeta($old);	
			my $new = <<HTML;
<p style="float: right; width: 40%; margin-right: 10px">
HTML
			$$template =~ s/$old/$new/;

			my $old = qq{write('<div style="float: right;">');};
			$old = quotemeta($old);	
			my $new = <<HTML;
write('<div style="float: left;">');
HTML
			$$template =~ s/$old/$new/;			
			
			my $old = qq{<br clear="left" />};
			$old = quotemeta($old);	
			my $new = <<HTML;
<br clear="both" />
HTML
			$$template =~ s/$old/$new/g;						

			my $old = qq{style="width: 90%"};
			$old = quotemeta($old);	
			my $new = <<HTML;
style="width: 70%"
HTML
			$$template =~ s/$old/$new/g;			
}}}

sub _myupload {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $old = qq{<p><label for="file"><MT_TRANS phrase="File:"></label> <input type="file" name="file" /></p>};
			$old = quotemeta($old);	
			my $new = <<HTML;
<div style="direction:ltr;text-align:left;"><p><label for="file"><MT_TRANS phrase="File:"></label> <input type="file" name="file" /></p></div>
HTML
			$$template =~ s/$old/$new/;	
			
			my $old = qq{<TMPL_IF NAME=ENABLE_ARCHIVE_PATHS>};
			$old = quotemeta($old);	
			my $new = <<HTML;
<div style="direction:ltr;text-align:left;">
<TMPL_IF NAME=ENABLE_ARCHIVE_PATHS>
HTML
			$$template =~ s/$old/$new/;	

			my $old = qq{</TMPL_IF>};
			$old = quotemeta($old);	
			my $new = <<HTML;
</TMPL_IF>
</div>
HTML
			$$template =~ s/$old/$new/;	
}}}

sub _list_cats {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			$$template =~ s/margin-left/margin-right/g;
}}}

sub _mybuttons {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $old = qq{with (document)};
			$old = quotemeta($old);
			my $new = <<HTML;
with ( document ) {
write('<a title="<MT_TRANS phrase="Align Right">" href="javascript:void(0)" onclick="Right(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-alignright.gif" alt="<MT_TRANS phrase="Align Right">" width="22" height="16" border="0" /></a>');
        write('<a title="<MT_TRANS phrase="Align Left">" href="javascript:void(0)" onclick="Left(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-alignleft.gif" alt="<MT_TRANS phrase="Align Left">" width="22" height="16" border="0" /></a>');
        write('<a title="<MT_TRANS phrase="Right to Left">" href="javascript:void(0)" onclick="rtl(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-rtl.gif" alt="<MT_TRANS phrase="Right to Left">" width="22" height="16" border="0" /></a>');
        write('<a title="<MT_TRANS phrase="Left to Right">" href="javascript:void(0)" onclick="ltr(document.entry_form.text)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-ltr.gif" alt="<MT_TRANS phrase="Left to Right">" width="22" height="16" border="0" /></a>');
	}
	with ( document )
HTML
			$$template =~ s/$old/$new/;
			
			my $old = qq{with (document)};
			$old = quotemeta($old);
			my $new = <<HTML;
with (document) {
write('<a title="<MT_TRANS phrase="Align Right">" href="javascript:void(0)" onclick="Right(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-alignright.gif" alt="<MT_TRANS phrase="Align Right">" width="22" height="16" border="0" /></a>');
write('<a title="<MT_TRANS phrase="Align Left">" href="javascript:void(0)" onclick="Left(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-alignleft.gif" alt="<MT_TRANS phrase="Align Left">" width="22" height="16" border="0" /></a>');
write('<a title="<MT_TRANS phrase="Right to Left">" href="javascript:void(0)" onclick="rtl(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-rtl.gif" alt="<MT_TRANS phrase="Right to Left">" width="22" height="16" border="0" /></a>');
write('<a title="<MT_TRANS phrase="Left to Right">" href="javascript:void(0)" onclick="ltr(document.entry_form.text_more)"><img src="<TMPL_VAR NAME=STATIC_URI>images/html-ltr.gif" alt="<MT_TRANS phrase="Left to Right">" width="22" height="16" border="0" /></a>');
	}
	with ( document )
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

			$old = 'href="#" onclick="return';
			$new = 'href="javascript:void(0)" onclick="return';
			$$template =~ s/$old/$new/g;	
		}
	}		
}

sub _feedback {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
		$$template =~ s/decrease.gif/decrease-fa.gif/;
		$$template =~ s/increase.gif/increase-fa.gif/;	
    }
  }
}

sub _CMSPreSave_blog {
  my $eh = shift;
  my ($app, $obj) = @_;
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

sub _myNewWeblog {
	my ($cb, $app, $template) = @_;
	my $old = qq{</fieldset>};
	$old = quotemeta($old);	
	my $new = <<HTML;
<TMPL_IF NAME=NEW_OBJECT>
<div class="setting">
  <div class="label"><label for="fa_temp_type"><MT_TRANS phrase="Template layout:"></label></div>
	<div class="field">
		<ul>
			<li><label><input type="radio" value="rtl" name="fa_temp_type" id="fa_temp_type" class="cb" /> <MT_TRANS phrase="Right to Left (Farsi)"></label></li>
			<li><label><input type="radio" value="ltr" name="fa_temp_type" id="fa_temp_type" class="cb" /> <MT_TRANS phrase="Left to Right (English)"></label></li>
		</ul>
	<p><MT_TRANS phrase="Define the layout of dafault templates. If you choose right to left, default template texts will be translated to Farsi."></p>
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

sub _upgrade {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	my $cfg = $app->{cfg};
	if ($author) {
		if ($cfg->DefaultLanguage eq 'fa') {
			$$template =~ s/styles.css/styles-fa.css/;
			$$template =~ s/topnav-logo.gif/topnav-logo-fa.gif/;
			$$template =~ s/topnav-logo-popup.gif/topnav-logo-popup-fa.gif/;
			my $old = qq{<MT_TRANS phrase="Remember me?"> <input type="checkbox" name="remember" value="1" />};
			$old = quotemeta($old);
			my $new = <<HTML;
<input type="checkbox" name="remember" value="1" /> <MT_TRANS phrase="Remember me?">
HTML
			$$template =~ s/$old/$new/;	
				
			my $old = qq{Copyright &copy; 2001-2005 Six Apart. All Rights Reserved.};
			$old = quotemeta($old);	
			my $new = <<HTML;
حق تاليف &copy; ٢٠٠١-٢٠٠۶  کمپانی Six Apart. تمامی حقوق محفوظ است.<br /> تمام حقوق نسخه فارسی متعلق است به <a href="http://movabletype.ir">وب سایت مووبل تایپ فارسی</a>.
HTML
			$$template =~ s/$old/$new/;	
		
			my $old = qq{<b>Version <TMPL_VAR NAME=MT_VERSION></b>};
			$old = quotemeta($old);	
			my $new = <<HTML;
<b>نسخه <TMPL_VAR NAME=MT_VERSION></b>
HTML
			$$template =~ s/$old/$new/;
}}}	

sub _load_news {
	my ($cb, $app, $template) = @_;
	my $author = $app->{author};
	if ($author) {
		if  ($author->preferred_language eq 'fa')  {
			my $old = qq{<TMPL_VAR NAME=NEWS_HTML>};
			$old = quotemeta($old);	
			my $new = get_farsi_newsbox_content();			
			$$template =~ s/$old/$new/;	
}}}		

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

sub _format_ts {
    my($format, $ts, $blog, $lang) = @_;
    my %f;
    unless ($lang) {
        $lang = $blog && $blog->language ? $blog->language : 
	    MT::ConfigMgr->instance->DefaultLanguage;
    }
    unless (defined $format) {
        $format = "%x %X";
    }
    my $cache = MT::Request->instance->cache('formats');
    unless ($cache) {
        MT::Request->instance->cache('formats', $cache = {});
    }
	if (substr($ts,0,1) ne '1') {
		$format = g2jstrftime( $format , $ts );
		} else {
	$format= $ts;
}	
    $format = farsi_number($format);
	$format =~ s/\./\//g;
	$format;
}

sub _ext_format_ts {
  my($format, $ts, $blog, $lang) = @_;
	$Languages{'fa'} = [ 
            [ ('شنبه', 'یکشنبه', 'دوشنبه' ,'سه‌شنبه', 'چهارشنبه', 'پنجشنبه', 'جمعه') ],
            [ ( 'ژانویه', 'فوریه', 'مارس', 'آوریل', 'مه', 'ژوئن', 'ژوئیه', 'اوت', 'سپتامبر', 'اکتبر', 'نوامبر', 'دسامبر' ) ],
            [ ( 'ق.ظ', 'ب.ظ' ) ],
            "%A،%e %B %Y",
            "%A،%e %B %Y",
            "%H:%M",
          ];

					my %f;
    unless ($lang) {
        $lang = $blog && $blog->language ? $blog->language : 
	    MT::ConfigMgr->instance->DefaultLanguage;
    }
    unless (defined $format) {
        $format = $Languages{$lang}[3] || "%B %e, %Y %I:%M %p";
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
        $f{j} = MT::Util::yday_from_ts(@ts[0..2]);
        $f{'y'} = substr $f{Y}, 2;
        $f{b} = substr_wref $L->[1][$f{'m'}-1] || '', 0, 3;
        $f{B} = $L->[1][$f{'m'}-1];
        $f{a} = substr_wref $L->[0][$f{w}] || '', 0, 3;
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
    my $date_format = $Languages{$lang}->[4] || "%B %d, %Y";
    my $time_format = $Languages{$lang}->[5] || "%I:%M %p";
    $format =~ s!%x!$date_format!g;
    $format =~ s!%X!$time_format!g;
    if ($lang eq 'jp') {
        $format =~ s!%B %Y!$Languages{$lang}->[6]!g;
    }
    $format =~ s!%(\w)!$f{$1}!g if defined $format;
    $format;
}

1;