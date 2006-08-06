# Farsi plugin for Movable Type
# Authors: Aziz Ashofteh (http://www.aziza.ir/)
#          Milad Nekofar (http://www.nekofar.com)
# Released under the Artistic License
#
# $Id:$

package MT::L10N::fa;

use strict;
use MT::L10N::en_us;
use vars qw( @ISA %Lexicon );
@ISA = qw( MT::L10N::en_us );

sub encoding { 'utf-8' } 

## The following is the translation table.

%Lexicon = (

    ## ./mt-check.cgi.pre
    'Movable Type System Check' => 'ارزیابی سیستم برای نصب مووبل تایپ فارسی',
    'This page provides you with information on your system\'s configuration and determines whether you have all of the components you need to run Movable Type.' => '<div style="direction:rtl;text-align:right;margin:0 50px;">این برنامه اصلاعاتی در مورد تنظیمات و قابلیت های سرور شما ارائه میدهد و در انتها مشخص می کند که آیا تمامی پیش نیاز های نصب سیستم مووبل تایپ فارسی را بر روی سرور خود دارید یا خیر.',
    'System Information' => 'اطلاعات سیستم',
    'Current working directory:' => 'دایرکتوری فعلی:',
    'MT home directory:' => 'شاخه اصلی مووبل تایپ:',
    'Operating system:' => 'سیستم عامل:',
    'Perl version:' => 'نسخه پرل نصب شده:',
    'Perl include path:' => 'مسیر include فایل در پرل:',
    'Web server:' => 'وب سرور:',
    '(Probably) Running under cgiwrap or suexec' => 'احتمالا تحت cgiwrap یا suexec اجرا می شود.',
    'Checking for [_1] Modules:' => '<div style="direction:rtl;text-align:right;">تست [_1]',
    'Some of the following modules are required by the various data storage options in Movable Type. In order run the system, your server needs to have either DB_File, or else DBI and at least one of the other modules installed.' => 'مووبل تایپ قابلیت کار با سیستم های مختلف مدیریت پایگاه داده را داراست. این سیستم ها در زیر آمده اند. برای راه اندازی مووبل تایپ شما باید حداقل یکی از این ماژول های ارتباط با این سیستم ها را بر روی سرور خود نصب کرده باشید.',
    'Either your server does not have [_1] installed, the version that is installed is too old, or [_1] requires another module that is not installed.' => 'یا [_1] بر روی سرور شما <b>نصب نشده است</b> و یا [_1] نصب شده بر روی سرور شما بسیار قدیمی است و یا خود به ماژول دیگری نیاز دارد که آن ماژول نصب نشده است.',
    'Your server does not have [_1] installed, or [_1] requires another module that is not installed.' => '[_1] بر روی سرور شما <b>نصب نشده است</b> و یا به ماژول دیگری نیاز دارد که آن ماژول نصب نشده است.',
    'Please consult the installation instructions for help in installing [_1].' => 'برای نصب ماژول [_1] لطفا به راهنمای نصب مووبل تایپ مراجعه کنید',
    'The DBD::mysql version you have installed is known to be incompatible with Movable Type. Please install the current release available from CPAN.' => 'نسخه DBD::mysql نصب شده شما برای مووبل تایپ مناسب نیست. لطفا انتشار جاری را از CPAN نصب نمایید.',
    'The $mod is installed properly, but requires an updated DBI module. Please see note above regarding the DBI module requirements.' => '$mod بطور صحیح نصب شده، اما نیاز به به روز رسانی ماژول DBI می باشد. لطفا یاداشت بالا مبنی بر شرایط لازم ماژول DBI را مشاهده نمایید.',
    'Your server has [_1] installed (version [_2]).' => '[_1] بر روی سرور شما نصب شده است (نسخه [_2])',    
    'Movable Type System Check Successful' => '<div style="direction:rtl;text-align:right;">ارزیابی سیستم برای نصب مووبل تایپ فارسی با موفقیت انجام شد',
    'You\'re ready to go!' => 'همه چی رو به راهه!',
    'Your server has all of the required modules installed; you do not need to perform any additional module installations. Continue with the installation instructions.' => 'تمامی ماژول های الزامی بر روی سرور شما نصب شده است. برای راه اندازی مووبل تایپ نیاز به نصب ماژول دیگری ندارید. (هر چند ممکن است نیاز به نصب ماژول های اختیاری داشته باشید که در راه اندازی مووبل تایپ نقشی ندارند و تنها قابلیتهایی به آن اضافه میکنند) مراحل راه اندازی مووبل تایپ را بر اساس آنچه در راهنما آمده است ادامه دهید.',

    ## ./extras/examples/plugins/mirror/mirror.pl

    ## ./extras/examples/plugins/mirror/tmpl/mirror.tmpl

    ## ./extras/examples/plugins/l10nsample/l10nsample.pl
    'l10nsample' => 'نمونه l10n', # Translate - Previous (2)
    'This description can be localized if there is l10n_class set.' => 'اگر l10n_class را تنظیم شود این توصیف می تواند محلی شود.',
    'Fumiaki Yoshimatsu' => 'فیومیاکی یاشیماتسو', # Translate - Previous (2)

    ## ./extras/examples/plugins/l10nsample/tmpl/view.tmpl
    'This phrase is processed in template.' => 'این عبارت در  قالب پردازش شده.',

    ## ./default_templates/individual_entry_archive.tmpl
    'Main' => 'صفحه اصلی',
    'Tags' => 'تگ ها', # Translate - Previous (1)
    'Posted by [_1] on [_2]' => 'در [_2] توسط [_1] ارسال شده',
    'Permalink' => 'لینک ثابت',
    'TrackBack' => 'دنبالک', # Translate - Previous (1)
    'TrackBack URL for this entry:' => 'آدرس دنبالک برای این نوشته:',
    'Listed below are links to weblogs that reference' => 'لیست لینک وبلاگ هایی که ارجاع داده اند در زیر موجود است',
    'from' => 'از',
    'Read More' => 'ادامه',
    'Tracked on' => 'رسیده در تاریخ',
    'Comments' => 'نظرات',
    'Posted by' => 'ارسال شده توسط',
    'Anonymous' => 'ناشناس',
    'Posted on' => 'ارسال شده در',
    'Permalink to this comment' => 'لینک ثابت به این نظر',
    'Post a comment' => 'ارسال نظر',
    '(If you haven\'t left a comment here before, you may need to be approved by the site owner before your comment will appear. Until then, it won\'t appear on the entry. Thanks for waiting.)' => '(اگر پیش از این نظری ارسال نکرده اید، موافقت دارنده سایت برای نمایش نظر شما لازم می باشد. تا آن زمان، نظر شما نمایش داده نمی شود. از صبر شما متشکریم.)',
    'Name' => 'نام',
    'Email Address' => 'آدرس ایمیل',
    'URL' => 'آدرس وب سایت', # Translate - Previous (1)
    'Remember personal info?' => 'اطلاعات مرا به خاطر داشته باش',
    '(you may use HTML tags for style)' => '(برای نگارش می توانید از کد های اچ.تی.ام.ال استفاده کنید)',
    'Preview' => 'پیش نمایش',
    'Post' => 'ارسال',
    'Search' => 'جستجو',
    'Search this blog:' => 'جستجو این وبلاگ:',
    'About' => 'درباره',
    'The previous post in this blog was <a href="[_1]">[_2]</a>.' => 'ارسال قبلی این وبلاگ <a href="[_1]">[_2]</a> بوده است.',
    'The next post in this blog is <a href="[_1]">[_2]</a>.' => 'ارسال بعدی این وبلاگ <a href="[_1]">[_2]</a> است.',
    'Many more can be found on the <a href="[_1]">main index page</a> or by looking through <a href="[_2]">the archives</a>.' => 'در <a href="[_1]">صفحه اصلی</a> و یا با دیدن <a href="[_2]">آرشیو</a> می توانید موارد خیلی بیشتری پیدا کنید.',
    'Subscribe to this blog\'s feed' => 'در فید این وبلاگ عضو شوید',
    'http://www.sixapart.com/about/feeds' => 'http://www.sixapart.com/about/feeds', # Translate - Previous (6)
    'What is this?' => 'این چیست؟',
    'This weblog is licensed under a' => 'این وبلاگ تحت لیسانس زیر می باشد',
    'Creative Commons License' => 'لیسانس کریتیو کامانز',

    ## ./default_templates/stylesheet.tmpl

    ## ./default_templates/uploaded_image_popup_template.tmpl

    ## ./default_templates/comment_error_template.tmpl
    'Comment Submission Error' => 'خطا در ارسال نظر',
    'Your comment submission failed for the following reasons:' => 'ارسال نظر شما به دلیل زیر با شکست رو به رو شد:',
    'Return to the original entry' => 'بازگشت به نوشته اصلی',

    ## ./default_templates/rsd.tmpl

    ## ./default_templates/dynamic_site_bootstrapper.tmpl

    ## ./default_templates/main_index.tmpl
    'Continue reading' => 'ادامه',
    'TrackBacks' => 'دنبالک ها', # Translate - Previous (1)
    'Recent Posts' => 'آخرین نوشته ها',
    'Categories' => 'دسته بندی',
    'Archives' => 'آرشیو',

    ## ./default_templates/comment_preview_template.tmpl
    'Comment on' => 'نظری برای',
    'Previewing your Comment' => 'پیش نمایش نظر شما',
    'Cancel' => 'انصراف',

    ## ./default_templates/site_javascript.tmpl
    'Thanks for signing in,' => 'از ورود شما متشکرم،',
    '. Now you can comment. ' => '. حالا می توانید نظر بدهید.',
    'sign out' => 'خروج',
    'You are not signed in. You need to be registered to comment on this site.' => 'شما وارد نشده اید. برای ارسال نظر در این سایت می بایستی ثبت نام کنید.',
    'Sign in' => 'ورود',
    'If you have a TypeKey identity, you can' => 'اگر در \'TypeKey\' عضویت دارید، می توانید',
    'sign in' => 'ورود',
    'to use it here.' => 'استفاده کنید.',

    ## ./default_templates/dynamic_pages_error_template.tmpl
    'Page Not Found' => 'صفحه ای یافته نشد.',

    ## ./default_templates/trackback_listing_template.tmpl
    ': Discussion on [_1]' => ': مناظره در [_1]',
    'Trackbacks: [_1]' => 'دنبالک ها: [_1]',
    'Tracked on [_1]' => 'دنبالک در',

    ## ./default_templates/search_results_template.tmpl
#   'SEARCH FEED AUTODISCOVERY LINK PUBLISHED ONLY WHEN A SEARCH HAS BEEN EXECUTED' => '',
    'Search Results' => 'نتایج جستجو',
#   'STRAIGHT SEARCHES GET THE SEARCH QUERY FORM' => '',
    'Search this site' => 'جستجوی این سایت',
    'Match case' => 'مورد مشابه',
    'Regex search' => 'جستجوی منطبق',
    'SEARCH RESULTS DISPLAY' => 'نمایش نتایج جستجو',
    'Matching entries from [_1]' => 'نوشته های مطابق از [_1]',
    'Entries from [_1] tagged with \'[_2]\'' => 'نوشته هایی از [_1] که با [_2] تگ شده.',
    'Posted <MTIfNonEmpty tag="EntryAuthorDisplayName">by [_1] </MTIfNonEmpty>on [_2]' => 'در [_2] <MTIfNonEmpty tag="EntryAuthorDisplayName">توسط [_1] </MTIfNonEmpty>ارسال شده',
    'NO RESULTS FOUND MESSAGE' => 'پیغام یافتن نتایج نیست.',
    'Entries matching \'[_1]\'' => 'نوشته ها با \'[_1]\' مطابقت دارد',
    'Entries tagged with \'[_1]\'' => 'نوشته ها با \'[_1]\' تگ خورده است.',
    'No pages were found containing \'[_1]\'.' => 'هیچ صفحه ای حاوی \'[_1]\' یافت نشد.',
    'Instructions' => 'راهنمایی', # Translate - Previous (1)
    'By default, this search engine looks for all words in any order. To search for an exact phrase, enclose the phrase in quotes:' => 'به صورت پیش فرض، این موتور جستجوگر همه کلمات در هر موقعیتی را جستجو می کند. برای جستجو عبارت صحیح، عبارت را در میان نقل قول قرار دهید:',
    'movable type' => 'مووبل تایپ', # Translate - Previous (2)
    'The search engine also supports AND, OR, and NOT keywords to specify boolean expressions:' => 'این موتور جستجو گر کلمات کلیدی AND، OR و NOT را پشتیبانی می کند.',
    'personal OR publishing' => 'شخصی OR انتشار',
    'publishing NOT personal' => 'انتشار NOT شخصی',
#   'END OF ALPHA SEARCH RESULTS DIV' => '',
#   'BEGINNING OF BETA SIDEBAR FOR DISPLAY OF SEARCH INFORMATION' => '',
#   'SET VARIABLES FOR SEARCH vs TAG information' => '',
    'Subscribe to feed' => 'اشتراک فید',
    "If you use an RSS reader, you can subscribe to a feed of all future entries tagged '[_1]'." => 'اگر شما از آر اس اس خوان استفاده می کنید، می توانید برای تمام نوشته های تگ شده بعدی مشترک فید شوید. [_1]',
    "If you use an RSS reader, you can subscribe to a feed of all future entries matching '[_1]'." => 'اگر شما از آر اس اس خوان استفاده می کنید، می توانید برای تمام نوشته های مطابق بعدی مشترک فید شوید. [_1]',
#   'SEARCH/TAG FEED SUBSCRIPTION INFORMATION' => '',
    'Feed Subscription' => 'اشتراک فید',
    'TAG LISTING FOR TAG SEARCH ONLY' => 'لیست تگ فقط برای جستجوی تگ است.',
    'Other Tags' => 'تگ های دیگر',
    'Other tags used on this blog' => 'تگ های دیگر که در این وبلاگ استفاده شده',
    'END OF PAGE BODY' => 'پایان بدنه صفحه',
    'END OF CONTAINER' => 'پایان محتوی صفحه',

    ## ./default_templates/datebased_archive.tmpl
    'About [_1]' => 'درباره [_1]',
    '<a href=' => '<a href=', # Translate - Previous (3)

    ## ./default_templates/category_archive.tmpl
    'Posted on [_1]' => 'در [_1] ارسال شده.',

    ## ./default_templates/comment_pending_template.tmpl
    'Comment Pending' => 'تعلیق نظر',
    'Thank you for commenting.' => 'از اظهار نظر شما متشکریم.',
    'Your comment has been received and held for approval by the blog owner.' => 'نظر شما دریافت و برای بررسی توسط صاحب وبلاگ نگهداری می شود.',

    ## ./default_templates/rss_20_index.tmpl

    ## ./default_templates/master_archive_index.tmpl
    ': Archives' => ': آرشیو',

    ## ./default_templates/atom_index.tmpl

    ## ./search_templates/comments.tmpl
    'Search for new comments from:' => 'جستجو برای نظرات جدید از:',
    'the beginning' => 'ابتدا',
    'one week back' => 'یک هفته قبل',
    'two weeks back' => 'دو هفته قبل',
    'one month back' => 'یک ماه قبل',
    'two months back' => 'دو ماه قبل',
    'three months back' => 'سه ماه قبل',
    'four months back' => 'چهار ماه قبل',
    'five months back' => 'پنج ماه قبل',
    'six months back' => 'شش ماه قبل',
    'one year back' => 'یک سال قبل',
    'Find new comments' => 'یافتن نظر جدید',
    'Posted in [_1] on [_2]' => 'در [_1] به [_2] ارسال شده',
    'No results found' => 'نتایجی پیدا نشد',
    'No new comments were found in the specified interval.' => 'هیچ نظر جدیدی در مدت مشخص شده، پیدا نشد.',
    'Select the time interval that you\'d like to search in, then click "Find new comments"' => 'فاصله زمانی که مایلید جستجو شود را انتخاب کنید، سپس بر روی "یافتن نظر جدید" کلیک کنید.',

    ## ./search_templates/results_feed.tmpl
    'Search Results for [_1]' => 'نتایج جستجو برای [_1]',

    ## ./search_templates/results_feed_rss2.tmpl

    ## ./search_templates/default.tmpl
    'Blog Search Results' => 'نتایج جستجوی وبلاگ',
    'Blog search' => 'جستجوی وبلاگ',

    ## ./plugins/nofollow/nofollow.pl
    'Adds a \'nofollow\' relationship to comment and TrackBack hyperlinks to reduce spam.' => 'برای کاهش اسپام نسبت \'nofollow\' را به ابر لینک نظر و دنبالک می افزاید.',
    'Restrict:' => 'محدود کردن',
    'Don\'t add nofollow to links in comments by authenticated commenters' => 'nofollow را به لینک های نظرات نظر دهندگان تعیین اعتبار شده اضافه نکن',

    ## ./plugins/TemplateRefresh/TemplateRefresh.pl
    'Backup and refresh existing templates to Movable Type\'s default templates.' => 'پشتیبان گیری و دوباره سازی قالب های موجود برای قالب های پیشفرض مووبل تایپ.',

    ## ./plugins/TemplateRefresh/tmpl/results.tmpl
    'Backup and Refresh Templates' => 'پشتیبان گیری و دوباره سازی قالب ها',
    'No templates were selected to process.' => 'هیچ قالبی برای پردازش انتخاب نشده.',
    'Return' => 'بازگشت',

    ## ./plugins/feeds-app-lite/mt-feeds.pl
    'Feeds.App Lite helps you republish feeds on your blogs. Want to do more with feeds in Movable Type?' => 'فیدز.ای پی پی لایت به شما در انتشار مجدد محتوای فید ها در وبلاگ تان کمک می کند. به فید های بیشتری در مووبل تایپ نیاز دارید؟',
    'Upgrade to Feeds.App' => 'ارتقاء به فیدز.ای پی پی',

    ## ./plugins/feeds-app-lite/tmpl/select.tmpl
    'Feeds.App Lite Widget Creator' => 'ویجت ساز فیدز.ای پی پی لایت',
    'Multiple feeds were discovered. Select the feed you wish to use. Feeds.App lite supports text-only RSS 1.0, 2.0 and Atom feeds.' => 'چندین فید یافته شد. فیدی که مایل به استفاده از آن هستید انتخاب کنید. فیدز.ای پی پی لایت متن آر اس اس 1.0، 2.0 و فید های اتم را پشتیبانی می کند.',
    'Type' => 'نوع', # Translate - Previous (1)
    'URI' => 'آدرس وب', # Translate - Previous (1)
    'Continue' => 'ادامه',

    ## ./plugins/feeds-app-lite/tmpl/msg.tmpl
    'No feeds could be discovered using [_1].' => 'در استفاده از [_1] هیچ فیدی پیدا نشد.',
    'An error occurred processing [_1]. Check <a href=' => 'در استفاده از [_1] هیچ فیدی پیدا نشد. بررسی کنید <a href=',
#   'It can be included onto your published blog using <a href=' => 'Il peut être intégré sur votre blog en utilisant <a href=',
    'It can be included onto your published blog using this MTInclude tag' => 'می توانید این را با استفاده از تگ MTInclude در وبلاگ خود منتشر کنید.',
    'Go Back' => 'باز گشت',
    'Create Another' => 'سختن یکی دیگر',

    ## ./plugins/feeds-app-lite/tmpl/header.tmpl
    'Main Menu' => 'منوی اصلی',
    'System Overview' => 'مديريت سيستم',
    'Help' => 'راهنما',
    'Welcome' => 'خوش آمدی',
    'Logout' => 'خروج',
    'Entries' => 'نوشته ها',
    'Search (q)' => 'جستجو (q)',

    ## ./plugins/feeds-app-lite/tmpl/start.tmpl
#   'Feeds.App Lite creates modules that include feed data. Once you\'ve used it to create those modules, you can then use them in your blog templates.' => 'فیدز.ای پی پی لایت ماژول هایی برای ورود اطلاعات فید می سازد. ',
    'You must enter an address to proceed' => 'باید آدرس را جهت پردازش وارد نمایید.',
    'Enter the URL of a feed, or the URL of a site that has a feed.' => 'آدرس وب فید، یا آدرس وب سایت دارنده فید را وارد کنید.',

    ## ./plugins/feeds-app-lite/tmpl/footer.tmpl

    ## ./plugins/feeds-app-lite/tmpl/config.tmpl
    'Feed Configuration' => 'پیکر بندی فید',
    'Feed URL' => 'آدرس وب فید',
    'Title' => 'عنوان',
    'Enter a title for your widget.  This will also be displayed as the title of the feed when used on your published blog.' => 'نامی برای ویجت خود وارد نمایید. همچنین این نام به عنوان، عنوان فید هنگام استفاده در وبلاگ منتشر شده شما نمایش داده می شود.',
    'Display' => 'نمایش',
    '3' => '3', # Translate - Previous (1)
    '5' => '5', # Translate - Previous (1)
    '10' => '10', # Translate - Previous (1)
    'All' => 'همه',
    'Select the maximum number of entries to display.' => 'حداکثر تعداد نوشته ها برای نمایش را انتخاب کنید.',
    'Save' => 'ذخیره',

    ## ./plugins/spamlookup/spamlookup_words.pl
    'SpamLookup module for moderating and junking feedback using keyword filters.' => 'ماژول اسپام لوک آپ برای محدود کردن و هرزه  کردن نظرات/دنبالک ها با استفاده از فیلتر های کلمات.',

    ## ./plugins/spamlookup/spamlookup_urls.pl
    'SpamLookup - Link' => 'اسپام لوک آپ - لینک',
    'SpamLookup module for junking and moderating feedback based on link filters.' => 'ماژول اسپام لوک آپ برای هرزه و محدود کردن نظرات/دنبالک ها بر پایه فیلتر های لینک.',

    ## ./plugins/spamlookup/spamlookup.pl
    'SpamLookup module for using blacklist lookup services to filter feedback.' => 'ماژول اسپام لوک آپ برای استفاده از جدول سرویس های لیست سیاه برای فیلتر نظرات/دنبالک ها.',

    ## ./plugins/spamlookup/tmpl/url_config.tmpl
#   'Link filters monitor the number of hyperlinks in incoming feedback. Feedback with many links can be held for moderation or scored as junk. Conversely, feedback that does not contain links or only refers to previously published URLs can be positively rated. (Only enable this option if you are sure your site is already spam-free.)' => '//',
    'Link Limits:' => 'محدودیت های لینک:',
#   'Credit feedback rating when no hyperlinks are present' => '/',
    'Adjust scoring' => 'انظیم علامت',
    'Score weight:' => 'میزان علامت:',
    'Decrease' => 'کاهش',
    'Increase' => 'افزایش',
    'Moderate when more than' => 'محدود هنگامی که بیشتر از',
    'link(s) are given' => 'لینک معین',
    'Junk when more than' => 'هرزه کردن هنگامی که بیشتر از',
    'Link Memory:' => 'حافظه لینک',
#   'Credit feedback rating when &quot;URL&quot; element of feedback has been published before' => 'URL/',
#   'Only applied when no other links are present in message of feedback.' => '/',
#   'Exclude URLs from comments published within last [_1] days.' => '[_1]URL',
    'Email Memory:' => 'حافظه ایمیل:',
#   'Credit feedback rating when previously published comments are found matching on the &quot;Email&quot; address' => '',
#   'Exclude Email addresses from comments published within last [_1] days.' => '[_1]',

    ## ./plugins/spamlookup/tmpl/lookup_config.tmpl
#   'Lookups monitor the source IP addresses and hyperlinks of all incoming feedback. If a comment or TrackBack comes from a blacklisted IP address or contains a blacklisted domain, it can be held for moderation or scored as junk and placed into the blog\'s Junk folder. Additionally, advanced lookups on TrackBack source data can be performed.' => 'نظارت مراحعات منابع آدرس های آی پی و لینک ها در تمام نظرات/دنبالک های ورودی. اگر نظر یا دنبالکی از آدرس های آی پی لیست سیاه وارد شود یا محتوی دامنه از لیست سیاه باشد، برای محدود کردن نگه داری و یا به عنوان هرزه در پوشه هرزه وبلاگ قرار می گیرد.',
    'IP Address Lookups:' => 'مراجعات آدرس آی پی:',
    'Off' => 'خیر',
    'Moderate feedback from blacklisted IP addresses' => 'محدود کردن نظرات/دنبالک ها از آدرس های آی پی لیست سیاه',
    'Junk feedback from blacklisted IP addresses' => 'هرزه کردن نظرات/دنبالک ها از آدرس های آی پی لیست سیاه',
    'Less' => 'کمتر',
    'More' => 'بیشتر',
    'block' => 'مسدود کردن',
    'none' => 'هیچکدام',
    'IP Blacklist Services:' => 'خدمات لیست سیاه آی پی:',
    'Domain Name Lookups:' => 'مراجعات نام دامنه:',
    'Moderate feedback containing blacklisted domains' => 'محدود کردن نظرات/دنبالک های شامل دامنه های لیست سیاه',
    'Junk feedback containing blacklisted domains' => 'هرزه کردن نظرات/دنبالک های شامل دامنه های لیست سیاه',
    'Domain Blacklist Services:' => 'خدمات لیست سیاه دامنه:',
    'Advanced TrackBack Lookups:' => 'مراجعات پیشرفته دنبالک:',
    'Moderate TrackBacks from suspicious sources' => 'محدود کردن دنبالک ها از منابع مشکوک',
    'Junk TrackBacks from suspicious sources' => 'هرزه کردن دنبالک ها از منابع مشکوک',
    'To prevent lookups for some IP addresses or domains, list them below. Place each entry on a line by itself.' => 'برای جلوگیری مراجعات از تعدادی از آدرس های آی پی یا دامنه ها، آن ها را در زیر لیست کنید. هر نوشته را در خطی برای خودش قرار دهید.',
    'Lookup Whitelist:' => 'لیست سفید مراجعه:',

    ## ./plugins/spamlookup/tmpl/word_config.tmpl
#   'Incomming feedback can be monitored for specific keywords, domain names, and patterns. Matches can be held for moderation or scored as junk. Additionally, junk scores for these matches can be customized.' => 'نظارت بر نظرات/دنبالک های ورودی برای کلمات کلیدی بخصوص، نام های دامنه، و عبارات.',
    'Keywords to Moderate:' => 'کلمات کلیدی برای محدود کردن:',
    'Keywords to Junk:' => 'کلمات کلیدی برای هرزه کردن:',

    ## ./plugins/GoogleSearch/GoogleSearch.pl

    ## ./plugins/GoogleSearch/tmpl/config.tmpl
    'Google API Key:' => 'کلید API گوگل:',
    'If you wish to use any of the Google API functionality, you will need a Google API key. Paste it in here.' => 'اگر مایل به استفاده تابعی از API گوگل هستید، به کلید API گوگل نیاز مند هستید. آن را در اینجا درج کنید.',

    ## ./plugins/StyleCatcher/stylecatcher.pl
    '<p style=' => '<p style=', # Translate - Previous (3)
    'Theme Root Path:' => 'مسیر ریشه زمینه:',
    'Theme Root URL:' => 'آدرس ریشه زمینه:',
    'Style Library URL:' => 'آدرس کتابخانه استایل:',

    ## ./plugins/StyleCatcher/tmpl/gmscript.tmpl

    ## ./plugins/StyleCatcher/tmpl/header.tmpl
    'View Site' => 'نمایش سایت',

    ## ./plugins/StyleCatcher/tmpl/view.tmpl
    'Please select a weblog to apply this theme.' => 'لطفا برای اعمال این زمینه یک وبلاگ انتخاب کنید.',
    'Please click on a theme before attempting to apply a new design to your blog.' => 'لطفا قبل از اعمال طرح جدید بر روی وبلاگ خود بر روی زمینه کلیک نمایید.',
    'Applying...' => 'اعمال شدن...',
    'Choose this Design' => 'انتخاب این طرح',
    'Find Style' => 'یافتن استایل',
    'Loading...' => 'بارگيرى...',
    'StyleCatcher user script.' => 'اسکریپت کاربر استایل کچر.',
    'Theme or Repository URL:' => 'آدرس زمینه یا مخزن:',
    'Find Styles' => 'یافتن استایل ها',
    'NOTE:' => 'يادداشت:',
#   'It will take a moment for themes to populate once you click \'Find Style\'.' => '',
    'Current theme for your weblog' => 'زمینه فعلی وبلاگ شا',
    'Current Theme' => 'زمینه فعلی',
    'Current themes for your weblogs' => 'زمینه های فعلی وبلاگ های شما',
    'Current Themes' => 'زمینه های فعلی',
    'Locally saved themes' => 'زمینه های ذخیره شده محلی',
    'Saved Themes' => 'زمینه های ذخیره شده',
#   'Single themes from the web' => '',
    'More Themes' => 'زمینه های بیشتر',
    'Templates' => 'قالب ها',
    'Details' => 'جزئيات',
    'Show Details' => 'نمایش جزئيات',
    'Hide Details' => 'مخفی کردن جزئيات',
    'Select a Weblog...' => 'انتخاب وبلاگ...',
    'Apply Selected Design' => 'اعمال طرح انتخاب شده',
#   'You don\'t appear to have any weblogs with a \'styles-site.css\' template that you have rights to edit. Please check your weblog(s) for this template.' => '',

    ## ./plugins/StyleCatcher/tmpl/footer.tmpl

    ## ./plugins/WidgetManager/WidgetManager.pl
    'Maintain your weblog\'s widget content using a handy drag and drop interface.' => 'نگهداری از محتوای ویجت وبلاگ شما با استفاده از واسط کشیدن و انداختن دستی.',

    ## ./plugins/WidgetManager/tmpl/list.tmpl
    'Widget Manager' => 'مدیر ویجت',
    'Your changes to the Widget Manager have been saved.' => 'تغییرات شما در مدیر ویجت ذخیره شد.',
    'You have successfully deleted the selected Widget Manager(s) from your weblog.' => 'مدیر ویجت (ها) انتخاب شده با موفقیت از وبلاگ شما حذف شد.',
    'To add a Widget Manager to your templates, use the following syntax:' => 'برای افزودن مدیر ویجت جدید به قالب های خود از ترکیب زیر استفاده کنید:',
    'Widget Managers' => 'مدیر های ویجت',
    'Add Widget Manager' => 'افزودن مدیر ویجت',
    'Create Widget Manager' => 'ساختن مدیر ویجت',
    'Delete Selected' => 'حذف انتخاب شده ها',
    'Are you sure you wish to delete the selected Widget Manager(s)?' => 'آیا مطمئن هستید که می خواهید مدیر (های) ویجت انتخاب شده را حذف کنید؟',
    'WidgetManager Name' => 'نام مدیر ویجت',
    'Installed Widgets' => 'ویجت های نصب شده',

    ## ./plugins/WidgetManager/tmpl/header.tmpl
    'Movable Type Publishing Platform' => 'مووبل تایپ فارسی',
    'Weblogs' => 'وبلاگ ها', # Translate - Previous (1)
    'Go' => 'برو',

    ## ./plugins/WidgetManager/tmpl/edit.tmpl
    'You already have a widget manager named [_1]. Please use a unique name for this widget manager.' => 'شما پیش از این مدیر ویجتی با نام [_1] دارید. لطفا برای مدیر ویجت از نام منحصر به فرد استفاده کنید.',
    'Rearrange Items' => 'بازچینی موارد',
    'Widget Manager Name:' => 'نام مدیر ویجت:',
    'Build WidgetManager:' => 'ساختن ویجت منجر:',
    'Available Widgets' => 'ویجت های موجود',
    'Save Changes' => 'ذخیره تغییرات',
    'Save changes (s)' => 'ذخیره تغییرات (s)',

    ## ./plugins/WidgetManager/tmpl/footer.tmpl

    ## ./plugins/WidgetManager/default_widgets/search.tmpl

    ## ./plugins/WidgetManager/default_widgets/recent_posts.tmpl

    ## ./plugins/WidgetManager/default_widgets/technorati_search.tmpl
    'Technorati' => 'تکنوراتی', # Translate - Previous (1)
    'this blog' => 'این وبلاگ',
    'all blogs' => 'همه وبلاگ ها',
    'Blogs that link here' => 'وبلاگ هایی که لینک دادن',

    ## ./plugins/WidgetManager/default_widgets/copyright.tmpl

    ## ./plugins/WidgetManager/default_widgets/creative_commons.tmpl

    ## ./plugins/WidgetManager/default_widgets/recent_comments.tmpl
    'Recent Comments' => 'آخرین نظرات',

    ## ./plugins/WidgetManager/default_widgets/subscribe_to_feed.tmpl

    ## ./plugins/WidgetManager/default_widgets/monthly_archive_dropdown.tmpl
    'Select a Month...' => 'انتخاب ماه...',

    ## ./plugins/WidgetManager/default_widgets/monthly_archive_list.tmpl

    ## ./plugins/WidgetManager/default_widgets/category_archive_list.tmpl

    ## ./plugins/WidgetManager/default_widgets/calendar.tmpl
    'Monthly calendar with links to each day\'s posts' => 'تقویم ماهانه همراه با لینک های روز پست ها.',
    'Sunday' => 'یکشنبه',
    'Sun' => 'ی',
    'Monday' => 'دوشنبه',
    'Mon' => 'د',
    'Tuesday' => 'سه شنبه',
    'Tue' => 'س',
    'Wednesday' => 'چهارشنبه',
    'Wed' => 'چ',
    'Thursday' => 'پنجشنبه',
    'Thu' => 'پ',
    'Friday' => 'جمعه',
    'Fri' => 'ج',
    'Saturday' => 'شنبه',
    'Sat' => 'ش',

    ## ./plugins/WidgetManager/default_widgets/tag_cloud_module.tmpl
    'Tag cloud' => 'توده تگ',

    ## ./lib/MT/default-templates.pl

    ## ./build/template_hash_signatures.pl

    ## ./build/exportmt.pl

    ## ./build/l10n/diff.pl

    ## ./build/l10n/wrap.pl

    ## ./build/l10n/trans.pl

    ## ./tmpl/error.tmpl
    'Missing Configuration File' => 'فایل تنظیمات مووبل تایپ (mt-config.cgi) پیدا نشد',
    'Database Connection Error' => 'خطایی در اتصال به پایگاه داده رخ داده است',
    'CGI Path Configuration Required' => 'تنظیمات مربوط به CGI Path وارد نشده است',
    'An error occurred' => 'خطای زیر رخ داده است',

    ## ./tmpl/cms/edit_entry.tmpl
#   'You have unsaved changes to your entry that will be lost.' => '',
    'Add new category...' => 'ساخت دسته جدید...',
    'Publish On' => 'انتشار در',
    'Entry Date' => 'تاریخ نوشته',
    'You must specify at least one recipient.' => 'می بایست دست کم یک گیرنده تعیین کنید.',
    'Create New Entry' => 'نوشته جدید',
    'Edit Entry' => 'ویرایش نوشته',
    'Your entry has been saved. You can now make any changes to the entry itself, edit the authored-on date, edit comments, or send a notification.' => 'نوشته شما ذخیره شد. حالا شما می توانید خود نوشته، تاریخ نگارش آن و نظرات مربوط به آن را تغییر دهید. علاوه بر این می توانید نامه های اطلاع رسانی برای این نوشته بفرستید.',
    'Your changes have been saved.' => 'تغییرات شما ذخیره شد.',
    'One or more errors occurred when sending update pings or TrackBacks.' => 'در هنگام ارسال دنبالک یا پینگ به روز رسانی یک یا چند خطا رخ داد.',
    'Your customization preferences have been saved, and are visible in the form below.' => 'تنظیمات شما ذخیره شده و در این صفحه اعمال شد.',
    'Your changes to the comment have been saved.' => 'تغییرات شما در این نظر ذخیره شد.',
    'Your notification has been sent.' => 'ایمیلی به تمامی افراد موجود در کتابچه آدرس شما فرستاده شد.',
    'You have successfully deleted the checked comment(s).' => 'نظراتی که تیک داشتند به کلی حذف شدند.',
    'You have successfully deleted the checked TrackBack(s).' => 'دنبالک هایی که تیک داشتند به کلی حذف شدند.',
    'Previous' => 'قبلی',
    'List &amp; Edit Entries' => 'لیست نوشته ها',
    'Next' => 'بعدی',
    '_external_link_target' => '_haut',
    'View Entry' => 'Afficher la note',
    'Entry' => 'نوشته',
    'Comments ([_1])' => 'نظرات ([_1])',
    'TrackBacks ([_1])' => 'دنبالک ها ([_1])',
    'Notification' => 'اطلاع رسانی',
    'Status' => 'وضعیت',
    'Unpublished' => 'پیش نویس',
    'Published' => 'منتشر شده',
    'Scheduled' => 'زمانبندى شده',
    'Category' => 'دسته بندی',
    'Assign Multiple Categories' => '» تخصیص چند دسته به این نوشته',
    'Entry Body' => 'متن نوشته',
    'Bold' => 'تو پر',
    'Italic' => 'مایل',
    'Underline' => 'زیر خط دار',
    'Insert Link' => 'اضافه کردن لینک',
    'Insert Email Link' => 'اضافه کردن لینک ایمیل',
    'Quote' => 'نقل قول',
    'Bigger' => 'بزرگتر',
    'Smaller' => 'کوچکتر',
    'Extended Entry' => 'نوشته اضافه',
    'Excerpt' => 'خلاصه',
    'Keywords' => 'کلمات کلیدی',
    '(comma-delimited list)' => '(تگ ها را با کاما از هم جدا کنید.)',
    '(space-delimited list)' => '(تگ ها را با فاصله از هم جدا کنید.)',
    '(delimited by \'[_1]\')' => '(جداسازی توسط \'[_1]\')',
    'Text Formatting' => 'Mise en forme du texte',
    'Basename' => 'نام فایل',
    'Unlock this entry\'s output filename for editing' => 'بازکردن نام فایل خروجی این نوشته برای ویرایش',
    'Warning' => 'اخطار',
    'Warning: If you set the basename manually, it may conflict with another entry.' => 'توجه: اگر نام فایل را به صورت دستی وارد میکنید حتما توجه داشته باشید که نامی که انتخاب می کنید کاملا منحصر به فرد بوده و با نام فایل نوشته های قبلی مشترک نباشد.',
    'Warning: Changing this entry\'s basename may break inbound links.' => 'هشدار: تغییر نام فایل این نوشته موجب شکسته شدن لینک های ورودی می شود.',
    'Accept Comments' => 'پذیرش نظر',
    'Accept TrackBacks' => 'پذیرش دنبالک',
    'Outbound TrackBack URLs' => 'ارسال دنبالک',
    'View Previously Sent TrackBacks' => 'دنبالک هایی که قبلا فرستاده شده اند',
    'Customize the display of this page.' => '» طریقه نمایش این صفحه را به میل خود تنظیم کنید.',
    'Manage Comments' => 'مدیریت نظرات',
    'Click on a [_1] to edit it. To perform any other action, check the checkbox of one or more [_2] and click the appropriate button or select a choice of actions from the dropdown to the right.' => 'برای ویرایش [_1] بر روی آن کلیک کنید. برای انجام سایر عملیات، [_2] را علامت گزاری و بر روی دکمه مناسب کلیک و یا از منوی پایین افتادنی عملیات مورد نظر خود را انتخاب کنید.',
    'No comments exist for this entry.' => 'نظری برای این نوشته وجود ندارد.',
    'Manage TrackBacks' => 'مدیریت دنبالک ها',
    'No TrackBacks exist for this entry.' => 'دنبالکی برای این نوشته وجود ندارد.',
    'Send a Notification' => 'فرستادن Email به اعضای سایت',
#   'You can send an email notification of this entry to people on your notification list or using arbitrary email addresses.' => '',
    'Recipients' => 'گیرنده ها',
    'Send notification to' => 'ارسال آگهی به',
    'Notification list subscribers, and/or' => 'لیست مشترکان آگهی، و/یا',
    'Other email addresses' => 'آدرس های ایمیل دیگر',
    'Note: Enter email addresses on separate lines or separated by commas.' => 'نکته: آدرس های ایمیل را با خط جداساز یا کاما جداساز وارد کنید.',
    'Notification content' => 'متن آگهی',
    'Your blog\'s name, this entry\'s title and a link to view it will be sent in the notification.  Additionally, you can add a  message, include an excerpt of the entry and/or send the entire entry.' => 'نام وبلاگ شما، عنوان این نوشته و لینک نمایش آن در آگهی ارسال می شود. اضافه بر آن، شما می توانید یک پیغام اضافه کنید، خلاصه ای از نوشته و/یا نوشته کامل را ارسال کنید.',
    'Message to recipients (optional)' => 'پیغام به گیرنده ها (اختیاری)',
    'Additional content to include (optional)' => 'محتوای اضافه برای ورود (اختیاری)',
    'Entry excerpt' => 'خلاصه نوشته',
    'Entire entry body' => 'متن کامل نوشته',
#   'Note: If you choose to send the entire entry, it will be sent as shown on the editing screen, without any text formatting applied.' => ': ',
    'Send entry notification' => 'ارسال آگهی نوشته',
    'Send notification (n)' => 'ارسال آگهی (n)',
    'Plugin Actions' => 'امکانات پلاگین ها',

    ## ./tmpl/cms/entry_prefs.tmpl
    'Entry Editor Display Options' => 'تنظیمات نمایش ویرایشگر نوشته',
    'Your entry screen preferences have been saved.' => 'تنظیمات شما ذخیره شد.',
    'Editor Fields' => 'فیلد های ویرایشگر',
    'Basic' => 'پایه',
    'Custom' => 'دلخواه',
    'Editable Authored On Date' => 'تاریخ قابل تغییر',
    'Action Bar' => 'نوار فرمان',
    'Select the location of the entry editor\'s action bar.' => 'محل نوار فرمان ویرایشگر نوشته را انتخاب کنید.',
    'Below' => 'زیر ',
    'Above' => 'بالا',
    'Both' => 'هر دوجا',

    ## ./tmpl/cms/preview_entry.tmpl
    'Re-Edit this entry' => 'ویرایش مجدد',
    'Save this entry' => 'ذخیره',

    ## ./tmpl/cms/menu.tmpl
    'Welcome to [_1].' => 'به [_1] خوش آمدید.',
    'You can post to and manage your weblog by selecting an option from the menu located to the left of this message.' => 'با استفاده از منوی سمت راست می توانید وبلاگ خود را مدیریت کنید.',
    'If you need assistance, try:' => 'اگر به اطلاعات بیشتری در مورد مووبل تایپ نیاز دارید، می توانید از آدرسهای زیر استفاده کنید:<p><a href="http://www.movabletype.ir" target="_blank">» وب سایت تخصصی مووبل تایپ فارسی</a></p>',
    'Movable Type User Manual' => '» راهنمای کاربران مووبل تایپ<br />',
    'http://www.sixapart.com/movabletype/support' => 'http://www.sixapart.com/movabletype/support',
    'Movable Type Technical Support' => '» پشتبانی فنی مووبل تایپ<br />',
    'Movable Type Community Forums' => '» انجمن کاربران مووبل تایپ ',
    'Change this message.' => '» تغییر این قسمت صفحه',
    'Edit this message.' => 'ویرایش این پیغام.',
    'Here is an overview of [_1].' => 'لیستی از آخرین وقایع رخ داده در وبلاگِ [_1]',
    'List Entries' => 'لیست نوشته ها',
    'Recent Entries' => 'آخرین نوشته ها',
    'List Comments' => 'لیست نظرات',
    'Pending' => 'در انتظار',
    'List TrackBacks' => 'لیست دنبالک ها',
    'Recent TrackBacks' => 'آخرین دنبالک ها',

    ## ./tmpl/cms/list_commenters.tmpl
    'Authenticated Commenters' => 'نظر دهندگان تعیین اعتبار شده',
    'The selected commenter(s) has been given trusted status.' => 'نظر دهنده انتخاب شده در وضعیت قابل اعتماد قرار گرفت.',
    'Trusted status has been removed from the selected commenter(s).' => 'نظر دهنده انتخاب شده از وضعیت قابل اعتماد خارج شد.',
    'The selected commenter(s) have been blocked from commenting.' => 'امکان نظر دهینظر دهنده انتخاب شده مسدود شد.',
    'The selected commenter(s) have been unbanned.' => 'نظر دهنده انتخاب شده از محرومیت خارج شد.',
    'Reset' => 'بازگشت به حالت اولیه',
    'Filter' => 'فیلتر کن',
    'None.' => 'ندارد.',
    '(Showing all commenters.)' => '(نمایش تمام نظر دهندگان.)',
    'Showing only commenters whose [_1] is [_2].' => 'نمایش نظر دهندگانی که [_1] هستند [_2].',
    'Commenter Feed' => 'فید نظر دهندگان',
    'Show' => 'نمایش',
    'all' => 'تمام',
    'only' => 'جزئی',
    'commenters.' => 'نظر دهندگان.',
    'commenters where' => 'از نظر دهندگان که',
    'status' => 'وضعیت',  	
    'commenter' => 'نظر دهنده',
    'is' => ' آن ها هست',
    'trusted' => 'قابل اعتماد',
    'untrusted' => 'غیر قابل اعتماد',
    'banned' => 'محروم شده',
    'unauthenticated' => 'تعیین اعتبار نشده',
    'authenticated' => 'تعیین اعتبار شده',
    '.' => '.', # Translate - Previous (0)
    'No commenters could be found.' => 'هیچ نظر دهنده ای پیدا نشد.',

    ## ./tmpl/cms/list_comment.tmpl
    'System-wide' => 'Dans tout le système',
    'The selected comment(s) has been published.' => 'نظرات انتخاب شده منتشر شد.',
    'All junked comments have been removed.' => 'تمام نظرات هرزه خذف شد.',
    'The selected comment(s) has been unpublished.' => 'نظرات انتخاب شده پیش نویس شد.',
    'The selected comment(s) has been junked.' => 'نظرات انتخاب شده هرزه شد.',
    'The selected comment(s) has been unjunked.' => 'نظرات انتخاب شده دیگر هرزه نیستند.',
    'The selected comment(s) has been deleted from the database.' => 'نظر(ات) انتخاب شده به کلی حذف شدند.',
#   'One or more comments you selected were submitted by an unauthenticated commenter. These commenters cannot be Banned or Trusted.' => '',
    'No comments appeared to be junk.' => 'هیچ نظری برای هرزه کردن نیست.',
    'Junk Comments' => 'نظرات هرزه',
    'Comment Feed' => 'فيد نظرات',
    'Comment Feed (Disabled)' => 'فید نظرات(غیر فعال)',
    'Disabled' => 'غیر فعال',
    'Set Web Services Password' => 'تنظیم کلمه عبور سرویس های وب',
    'Quickfilter:' => 'فیلتر سریع:',
    'Show unpublished comments.' => 'نمایش نظرات منتشر نشده.',
    '(Showing all comments.)' => '(در حال نمايش تمام نظرات)',
    'Showing only comments where [_1] is [_2].' => 'نمايش نظراتي که [_1] آنها [_2] است.',
    'comments.' => 'نظرات',
    'comments where' => 'از نظرات که',
    'published' => 'منتشر شده',
    'unpublished' => 'پیش نویس',
    'No comments could be found.' => 'هیچ نظری یافت نشد.',
    'No junk comments could be found.' => 'هیچ نظر هرزه ای یافت نشد.',

    ## ./tmpl/cms/show_upload_html.tmpl
    'Copy and paste this HTML into your entry.' => 'کد HTML زیر را Copy کرده و در نوشته خود Paste کنید.',
    'Close' => 'بستن',
    'Upload Another' => 'ارسال یک فایل دیگر',

    ## ./tmpl/cms/list_plugin.tmpl
    'Are you sure you want to reset the settings for this plugin?' => 'آیا مطمئن هستید که میخواهید تنظیمات برای این پلاگین بازیابی شود؟',
    'Disable plugin system?' => 'غیر فعال کردن سیستم پلاگین؟',
    'Disable this plugin?' => 'این پلاگین غیر فعال شود؟',
    'Enable plugin system?' => 'سیستم پلاگین فعال شود؟',
    'Enable this plugin?' => 'این پلاگین فعال شود؟',
    'Plugin Settings' => 'تنظیمات پلاگین ها',
    'This screen allows you to control the weblog-level settings of any configurable plugins you\'ve installed.' => 'در این صفحه می توانید تنظیمات بعضی از پلاگین ها را در سطح وبلاگ کنترل کنید (این قابلیت باید در پلاگین گنجانده شده باشد و ربطی به مووبل تایپ ندارد).',
    'Your plugin settings have been saved.' => 'تنظیمات پلاگین شما ذخیره شد.',
    'Your plugin settings have been reset.' => 'تنظیمات پلاگین شما بازیابی شد.',
    'Your plugins have been reconfigured.' => 'تغییرات ایجاد شده در تنظیمات پلاگین ها ذخیره شد.',
    'Your plugins have been reconfigured. Since you\'re running mod_perl, you will need to restart your web server for these changes to take effect.' => 'تغییرات ایجاد شده در تنظیمات پلاگین ها ذخیره شد. از آنجایی که mod_perl در حال کار است، برای ذخیره این تغییرات نیاز به شروع مجدد سرور می باشد.',
    'Settings' => 'تنظیمات',
    'Plugins' => 'پلاگین ها', # Translate - Previous (1)
    'Switch to Detailed Settings' => 'سوئیچ به جزئیات تنظیمات',
    'General' => 'عمومی',
    'New Entry Defaults' => 'نوشته جدید',
    'Feedback' => 'نظرخواهی/دنبالک', # Translate - Previous (1)
    'Publishing' => 'انتشار',
    'IP Banning' => 'بستن آی پی',
    'Switch to Basic Settings' => 'سوئیچ به تنظیمات پایه',
    'Registered Plugins' => 'پلاگین های ثبت شده',
    'Disable Plugins' => 'غیر فعال کردن تمام پلاگين ها',
    'Enable Plugins' => 'فعال کردن پلاگین ها',
    'Error' => 'خطا',
    'Failed to Load' => 'فراخوانی شکست خورد',
    'Disable' => 'غیر فعال',
    'Enabled' => 'فعال',
    'Enable' => 'فعال',
    'Documentation for [_1]' => 'راهنمای نصب و اطلاعات جانبی برای پلاگین [_1]',
    'Documentation' => 'مستندات',
    'Author of [_1]' => 'نویسنده پلاگین [_1]',
    'Author' => 'نویسنده',
    'More about [_1]' => 'اطلاعات بیشتری در مورد [_1]',
    'Support' => 'پشتیبانی',
    'Plugin Home' => 'خانه پلاگین',
    'Resources' => 'منابع',
    'Show Resources' => 'نمایش منابع',
    'Run' => 'اجرا',
    'Run [_1]' => 'اجرای [_1]',
    'Show Settings' => 'نمایش تنظیمات',
    'Settings for [_1]' => 'تنظیمات برای [_1]',
    'Version' => 'نسخه',
    'Resources Provided by [_1]' => 'منابع مربوط به [_1]',
    'Tag Attributes' => 'خواص تگ',
    'Text Filters' => 'فیلتر های متن',
    'Junk Filters' => 'فیلتر های کشف نظرات هرزه',
    '[_1] Settings' => 'تنظیمات [_1]',
    'Reset to Defaults' => 'بازیابی پیش فرض ها',
    'Plugin error:' => 'خطای پلاگین:',
    'No plugins with weblog-level configuration settings are installed.' => 'هیچ پلاگینی با تنظیمات سطح پیکربندی وبلاگ نصب نشده.',

    ## ./tmpl/cms/import.tmpl
    'Import / Export' => 'ورود / صدور',
    'Transfer weblog entries into Movable Type from other Movable Type installations or even other blogging tools or export your entries to create a backup or copy.' => 'انتقال نوشته های وبلاگ از نصب های دیگر مووبل تایپ یا ابزار های وبلاگ نویسی دیگر به مووبل تایپ یا صدور نوشته های شما برای ایجاد پشتیبان یا کپی.',
    'Import Entries' => 'وارد کردن نوشته ها به سیستم',
    'Export Entries' => 'صادر کردن نوشته ها',
    'Authorship of imported entries:' => 'نویسندگی نوشته های وارد شده:',
    'Import as me' => 'وارد یازی به عنوان من',
    'Preserve original author' => 'حفظ نویسنده اصلی',
#   'If you choose to preserve the authorship of the imported entries and any of those authors must be created in this installation, you must define a default password for those new accounts.' => '',
    'Default password for new authors:' => 'کلمه عبور پیشفرض برای نویسندگان جدید:',
    'Upload import file: (optional)' => 'انتقال فایل وارد سازی: (اختیاری)',
    'You will be assigned the author of all imported entries.  If you wish the original authors to keep ownership, you must contact your MT system administrator to perform the import so that new authors can be created if necessary.' => 'شما نویسنده تمامی نوشته های وارد شده به سیستم خواهید شد. اگر می خواهید که نویسنده های اصلی نوشته های به عنوان نویسنده باقی بمانند، باید با مدیر کل سیستم تماس گرفته و از او بخواهید که عمل ورود اطلاعات را انجام دهد تا در آن صورت نویسنده های هر مطلب با اجازه وی در سیستم ایجاد شود.',
    'Import File Encoding (optional):' => 'انکود فایل وارد سازی: (اختیاری)',
    'By default, Movable Type will attempt to automatically detect the character encoding of your import file.  However, if you experience difficulties, you can set it explicitly.' => 'به صورت پیش فرض، مووبل تایپ به صورت خود کار مبادرت به شناسایی انکود کاراکتر های فایل وارد سازی شما می نماید.',
    'Default category for entries (optional):' => 'دسته  پیش فرض برای نوشته ها (اختیاری) ',
    'Select a category' => 'یک دسته انتخاب کنید',
    'You can specify a default category for imported entries which have none assigned.' => 'شما می توانید برای نوشته های وارد شده دسته پیش فرضی تعیین نمایید.',
    'Importing from another system' => 'وارد سازی از سیستم دیگر',
    'Start title HTML (optional):' => 'آچ تی ام ال شروع عنوان: (اختیاری)',
    'End title HTML (optional):' => 'اچ تی ام ال پایان عنوان (اختیاری):',
#   'If the software you are importing from does not have title field, you can use this setting to identify a title inside the body of the entry.' => '',
    'Default post status for entries (optional):' => 'وضعیت پیش فرض نوشته ها (اختیاری)',
    'Select a post status' => 'وضعیت نوشته را انتخاب کنید',
#   'If the software you are importing from does not specify a post status in its export file, you can set this as the status to use when importing entries.' => '',
    'Import Entries (i)' => 'وارد سازی نوشته ها (i)',
    'Export Entries From [_1]' => 'صادر کردن نوشته ها از وبلاگ « [_1] »',
    'Export Entries (e)' => 'صدور نوشته ها (e)',
    'Export Entries to Tangent' => 'صادر کردن نوشته ها به یک سرور مجاور',

    ## ./tmpl/cms/commenter_actions.tmpl
    'Trust' => 'قابل اعتماد',
    'commenters' => 'نظر دهندگان',
    'to act upon' => 'انجام این فرمان',
    'Trust commenter' => 'قابل اعتماد است',
    'Untrust' => 'غیر قابل اعتماد',
    'Untrust commenter' => 'غیر قابل اعتماد است',
    'Ban' => 'محروم کردن',
    'Ban commenter' => 'محروم شود',
    'Unban' => 'لغو تحریم',
    'Unban commenter' => 'لغو تحریم',
    'Trust selected commenters' => 'نظر دهندگان انتخاب شده قابل اعتماد هستند',
    'Ban selected commenters' => 'نظر دهندگان انتخاب شده محروم شدند',

    ## ./tmpl/cms/cfg_prefs.tmpl
    'You must set your Weblog Name.' => 'می بایست نام وبلاگ را تنظیم کنید.',
    'You did not select a timezone.' => 'اختللاف ساعت مشخص نشده.',
    'General Settings' => 'تنظیمات عمومی',
    'This screen allows you to control general weblog settings, default weblog display settings, and third-party service settings.' => 'در این صفحه می توانید تنظیمات عمومی وبلاگ، تنظیمات پیش فرض نمایش وبلاگ و تنظیمات سرویس شخص ثالث را کنترل کنید.',
    'Your blog preferences have been saved.' => 'تنظیمات وبلاگ شما ذخیره شد.',
    'Weblog Settings' => 'تنظیمات وبلاگ',
    'Weblog Name' => 'نام وبلاگ',
    'Name your weblog. The weblog name can be changed at any time.' => 'برای وبلاگ خود یک نام انتخاب کنید. این نام هر گاه که مایل باشید قابل تغییر است.',
    'Description' => 'توضیحات', # Translate - Previous (1)
    'Enter a description for your weblog.' => 'توضیحی در رابطه با وبلاگ وارد کنید.',
    'Timezone:' => 'منطقه زمانی:',
    'Time zone not selected' => 'منطقه زمانی انتخاب نشده است',
#   'UTC+13 (New Zealand Daylight Savings Time)' => 'UTC+13 ()',
    'UTC+12 (International Date Line East)' => 'UTC+12 (خط بين المللى تغيير تاريخ شرقی)',
    'UTC+11' => 'UTC+11',
#   'UTC+10 (East Australian Time)' => 'UTC+10 ()',
#   'UTC+9.5 (Central Australian Time)' => 'UTC+9.5 ()',
    'UTC+9 (Japan Time)' => 'UTC+9 (ژاپن)',
#   'UTC+8 (China Coast Time)' => 'UTC+8 ()',
#   'UTC+7 (West Australian Time)' => 'UTC+7 ()',
#   'UTC+6.5 (North Sumatra)' => 'UTC+6.5 ()',
#   'UTC+6 (Russian Federation Zone 5)' => 'UTC+6 (5)',
    'UTC+5.5 (Indian)' => 'UTC+5.5 (هندوستان)',
#   'UTC+5 (Russian Federation Zone 4)' => 'UTC+5 (4)',
#   'UTC+4 (Russian Federation Zone 3)' => 'UTC+4 (3)',
    'UTC+3.5 (Iran)' => 'UTC+3.5 (ایران)',
#   'UTC+3 (Baghdad Time/Moscow Time)' => 'UTC+3 ()',
    'UTC+2 (Eastern Europe Time)' => 'UTC+2 (اروپای شرقی)',
    'UTC+1 (Central European Time)' => 'UTC+1 (اروپای مرکزی)',
#   'UTC+0 (Universal Time Coordinated)' => 'UTC+0 ()',
    'UTC-1 (West Africa Time)' => 'UTC-1 (غرب آفریقا)',
#   'UTC-2 (Azores Time)' => 'UTC-2 ()',
    'UTC-3 (Atlantic Time)' => 'UTC-3 (اقیانوس اطلس)',
    'UTC-3.5 (Newfoundland)' => 'UTC-3.5 (جزيره نيوفاوندلند)',
#   'UTC-4 (Atlantic Time)' => 'UTC-4 ()',
#   'UTC-5 (Eastern Time)' => 'UTC-5 ()',
#   'UTC-6 (Central Time)' => 'UTC-6 ()',
#   'UTC-7 (Mountain Time)' => 'UTC-7 ()',
#   'UTC-8 (Pacific Time)' => 'UTC-8 ()',
    'UTC-9 (Alaskan Time)' => 'UTC-9 (آلاسکا)',
    'UTC-10 (Aleutians-Hawaii Time)' => 'UTC-10 (جزایر هاوایی)',
#   'UTC-11 (Nome Time)' => 'UTC-11 ()',
    'Select your timezone from the pulldown menu.' => ' منطقه زمانی خود را انتخاب کنید.',
    'Default Weblog Display Settings' => 'تنظیمات پیش فرض نمایش وبلاگ',
    'Entries to Display:' => 'نمایش نوشته ها:',
    'Days' => 'روز',
    'Select the number of days\' entries or the exact number of entries you would like displayed on your weblog.' => 'انتخاب تعداد روزهای نوشته ها یا تعداد نوشته هایی که مایلید در وبلاگ شما به نمایش در آیند.',
    'Entry Order:' => 'ترتیب نوشته ها:',
    'Ascending' => 'صعودی',
    'Descending' => 'نزولی',
    'Select whether you want your posts displayed in ascending (oldest at top) or descending (newest at top) order.' => 'نوشته ها به صورت صعودی ( نوشته های قدیمی ها در بالای صفحه) یا به صورت نزولی (نوشته های جدید در بالای صفحه) نمایش داده شوند؟',
    'Comment Order:' => 'ترتیب نظرات:',
    'Select whether you want visitor comments displayed in ascending (oldest at top) or descending (newest at top) order.' => 'ترتیب نمایش نظرات بازدیدکنندگان را تعیین کنید. این ترتیب می تواند صعودی (قدیمی ها در بالا) و یا نزولی ( جدیدتر ها در بالا) باشد.',
    'Excerpt Length:' => 'طول متن خلاصه:',
    'Enter the number of words that should appear in an auto-generated excerpt.' => 'تعداد کلماتی که می بایست در هنگام ایجاد متن خلاصه به صورت خودکار نمایش داده شود وارد کنید.',
    'Date Language:' => 'زبان تاریخ:',
    'Czech' => 'چکوسلواکى',
    'Danish' => 'دانمارکى',
    'Dutch' => 'هلندى',
    'English' => 'انگلیسی',
    'Estonian' => 'استونیایی',
    'French' => 'فرانسوى',
    'German' => 'آلمانى',
    'Icelandic' => ' ایسلندى',
    'Italian' => 'ایتالیایى',
    'Japanese' => 'ژاپنى',
    'Norwegian' => 'نروژى',
    'Polish' => 'لهستانى',
    'Portuguese' => 'پرتقالى',
    'Slovak' => 'اسلواکی',
    'Slovenian' => 'اسلوانیایی',
    'Spanish' => 'اسپانیولى',
    'Suomi' => 'سومی',
    'Swedish' => 'سوئدى',
    'Select the language in which you would like dates on your blog displayed.' => 'زبانی که تاریخ(مثلا روز هفته) نوشته های شما بر اساس آن نمایش داده می شود',
    'Limit HTML Tags:' => 'محدودیت تگ های HTML:',
    'Use defaults' => 'استفاده از مقادیر پیش فرض',
    '([_1])' => '([_1])', # Translate - Previous (2)
    'Use my settings' => 'استفاده از مقادیر من',
    'Specifies the list of HTML tags allowed by default when cleaning an HTML string (a comment, for example).' => 'لیستی از تگ های HTML که در هنگام فیلتر کردن نوشته ها (مثلا نظرات دیگران) و پاک کردن آنها از هر کد مخربی نادیده گرفته می شوند و به عنوان کد HTML مورد قبول از نوشته پاک نمی شوند. ',
    'License' => 'لیسانس',
    'Your weblog is currently licensed under:' => 'وبلاگ شما در حال حاضر تحت لیسانس زیر منتشر می شود:',
    'Change your license' => 'تغییر لیسانس حال حاضر',
    'Remove this license' => 'حذف این لیسانس',
    'Your weblog does not have an explicit Creative Commons license.' => 'وبلاگ شما هیچ لیسانس کریتیو کامانزی ندارد.',
    'Create a license now' => 'یک لیسانس برای وبلاگ خود بسازید',
    'Select a Creative Commons license for the posts on your blog (optional).' => 'یک لیسانس کریتیو کامانز برای نوشته های وبلاگ خود انتخاب کنید. (اختیاری).',
    'Be sure that you understand these licenses before applying them to your own work.' => 'قبل از انتصاب هر لیسانس به نوشته های خود در یک وبلاگ مطمئن باشید که تمامی مواد آن لیسانس را به خوبی فهمیده اید.<br/>',
    'Read more.' => 'بیشتر بخوانید.',

    ## ./tmpl/cms/tag_table.tmpl
    'Date' => 'تاریخ', # Translate - Previous (1)
    'IP Address' => 'آدرس آی پی',
    'Log Message' => 'شرح فعالیت',

    ## ./tmpl/cms/cfg_entries_edit_page.tmpl
    'Default Entry Editor Display Options' => 'تنظیمات پیش فرض نمایش ویرایشگر نوشته',

    ## ./tmpl/cms/upload_complete.tmpl
    'Upload File' => 'ارسال فایل',
    'The file named \'[_1]\' has been uploaded. Size: [quant,_2,byte].' => 'فایل \'[_1]\' آپلود شد. اندازه: [quant,_2,بایت].',
    'Create a new entry using this uploaded file' => 'ساخت یک نوشته جدید با استفاده از این فایل.',
    'Show me the HTML' => 'نمایش کد HTML',
    'Image Thumbnail' => 'Thumbnail این عکس',
    'Create a thumbnail for this image' => 'ساخت یکThumbnail برای این عکس ',
    'Width:' => 'عرض:',
    'Pixels' => 'پیکسل',
    'Percent' => 'درصد',
    'Height:' => 'ارتفاع',
    'Constrain proportions' => 'حفظ نسبت بین طول و عرض',
    'Would you like this file to be a:' => 'حالت مورد نظر شما:',
    'Popup Image' => 'در یک صفحه جداگانه نمایش داده شود',
    'Embedded Image' => 'در همان صفحه اصلی نمایش داده شود',
    'Link' => 'لینک',

    ## ./tmpl/cms/bm_posted.tmpl
    'Your new entry has been saved to [_1]' => 'نوشته جدید شما در [_1] ذخیره شده',
    ', and it has been posted to your site' => '، و به سایت شما ارسال شد.',
    '. ' => '. ', # Translate - Previous (0)
    'View your site' => 'نمایش سایت شما',
    'Edit this entry' => 'ویرایش این نوشته',

    ## ./tmpl/cms/delete_confirm.tmpl
    'Are you sure you want to permanently delete the [quant,_1,author] from the system?' => 'آیا مطمئن هستید که می خواهید [_1] نویسنده را برای همیشه از سیستم حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,comment]?' => 'آیا مطمئن هستید که می خواهید [_1] نظر را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,TrackBack]?' => 'آیا مطمئن هستید که می خواهید [_1] دنبالک را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,entry,entries]?' => 'آیا مطمئن هستید که می خواهید [_1] نوشته را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,template]?' => 'آیا مطمئن هستید که می خواهید [_1] قالب را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,category,categories] When you delete a category, all entries assigned to that category will be unassigned from that category.' => 'آیا مطمئن هستید که می خواهید [_1] دسته را حذف کنید وقتی دسته ای را حذف می کنید نوشته های آن دسته حدف نمی شوند بلکه تنها بدون دسته می شوند.',
    'Are you sure you want to delete the [quant,_1,template] from the particular archive type(s)?' => 'آیا مطمئن هستید که می خواهید [_1] قالب را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,IP address,IP addresses] from your Banned IP List?' => 'آیا مطمئن هستید که می خواهید [_1] IP آدرس را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,notification address,notification addresses]?' => 'آیا مطمئن هستید که می خواهید [_1] آدرس را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,blocked item,blocked items]?' => 'آیا مطمئن هستید که می خواهید [_1] مورد مسدود شده را حذف کنید؟',
    'Are you sure you want to delete the [quant,_1,weblog] When you delete a weblog, all of the entries, comments, templates, notifications, and author permissions are deleted along with the weblog itself. Make sure that this is what you want, because this action is permanent.' => 'آیا مطمئن هستید که می خواهید [_1] وبلاگ را حذف کنید وقتی وبلاگی را حذف می کنید علاوه بر خود وبلاگ تمامی نوشته ها، نظرات، قالب ها، آدرس های کتابچه آدرس و مجوزهای نویسندگان آن  را نیز از بین می برید پس مطمئن باشید که این واقعا همان کاری است که در نظر دارید چرا که برگشت پذیر نیست!',
    'Delete' => 'حذف',

    ## ./tmpl/cms/cfg_system_feedback.tmpl
    'This screen allows you to configure feedback and outbound TrackBack settings for the entire installation.  These settings override any similar settings for individual weblogs.' => 'در این صفحه می توانید نظرخواهی/ دنبالک و تنظیمات دنبالک های خروجی برای تمام سیستم را تنظیم کنید. این تنظیمات بر همه تنظیمات هر یک از وبلاگ ها ارجحیت دارد.',
    'Your feedback preferences have been saved.' => 'تنظیمات نظرخواهی/دنبالک شما ذخیره شد.',
    'Feedback Master Switch' => 'کلید اصلی نظرخواهی/دنبالک',
    'Disable Comments' => 'نظرخواهی غیر فعال شود',
    'Stop accepting comments on all weblogs' => 'پذیرش نظرات در تمامی وبلاگ ها متوقف می شود',
    'This will override all individual weblog comment settings.' => 'این بر  تنظیمات نظر خواهی در تمام وبلاگ ها ارجحیت خواهد داشت.',
    'Disable TrackBacks' => 'دنبالک غیر فعال شود',
    'Stop accepting TrackBacks on all weblogs' => 'پذیرش دنبالک در تمامی وبلاگ ها متوقف می شود',
    'This will override all individual weblog TrackBack settings.' => 'این بر  تنظیمات دنبالک در تمام وبلاگ ها ارجحیت خواهد داشت.',
    'Outbound TrackBack Control' => 'کنترل ارسال دنبالک',
    'Allow outbound TrackBacks to:' => 'امکان ارسال دنبالک به:',
    'Any site' => 'هر سایتی',
    'No site' => 'هیچ سایتی',
    '(Disable all outbound TrackBacks.)' => '(غیر فعال کردن ارسال دنبالک)',
    'Only the weblogs on this installation' => 'فقط وبلاگ هایی که بر روی این سیستم هستند',
    'Only the sites on the following domains:' => 'فقط سایت هایی که دامنه آن ها در زیر آمده است:',
    'This feature allows you to limit outbound TrackBacks and TrackBack auto-discovery for the purposes of keeping your installation private.' => 'این ویژگی امکان محدود کردن ارسال دنبالک ها و شناسایی خود کار دنبالک را به منظور خصوصی سازی سیستم فراهم می کند.',

    ## ./tmpl/cms/cfg_entries.tmpl
    'New Entry Default Settings' => 'تنظیمات پیش فرض نوشته جدید',
    'This screen allows you to control default settings for new entries as well as your publicity and remote interface settings.' => 'در این صفحه می توانید تنظیمات پیش فرض برای نوشته های جدید و همچنین تنظیمات تبلیغ و واسط کنترل از راه دور را کنترل کنید.',
    'Default Settings for New Entries' => 'تنظیمات پیش فرض برای نوشته های جدید',
    'Post Status' => 'وضعیت نوشته',
    'Specifies the default Post Status when creating a new entry.' => 'مقدار پیش فرض این گزینه را تعیین کنید.',
    'Specifies the default Text Formatting option when creating a new entry.' => 'قالب بندی متن را در هنگام نوشتن متن جدید به طور پیش فرض تعیین می کند.',
    'Specifies the default Accept Comments setting when creating a new entry.' => 'پیش فرض شما برای فیلد پذیرش نظر در صفحه نوشته جدید.',
    'Setting Ignored' => 'تنظیمات رد شده',
    'Note: This option is currently ignored since comments are disabled either weblog or system-wide.' => 'توجه: در حال حاظر از این تنظیم صرف نظر شده از این رو نظر خواهی در وبلاگ یا کل سیستم غیر فعال شده.',
    'Specifies the default Accept TrackBacks setting when creating a new entry.' => 'پیش فرض شما برای فیلد پذیرش دنبالک در صفحه نوشته جدید.',
    'Note: This option is currently ignored since TrackBacks are disabled either weblog or system-wide.' => 'توجه: در حال حاظر از این تنظیم صرف نظر شده از این رو دنبالک در وبلاگ یا کل سیستم غیر فعال شده.',
    'Basename Length:' => 'طول نام فایل:',
    'Specifies the default length of an auto-generated basename. The range for this setting is 15 to 250.' => 'طول پیش فرض نام فایل ایجاد شده به صورت خودکار را تعیین کنید. حدود این تنظیم بین 15 تا 120 است.',
    'Publicity/Remote Interfaces' => 'تبلیغات/واسط های کنترل از راه دور',
    'Notify the following sites upon weblog updates:' => 'اعلام به روز رسانی پس از انتشار نوشته جدید:',
    'Others:' => 'دیگران:',
    '(Separate URLs with a carriage return.)' => '(هر آدرس را در یک خط مجزا بنویسید.)',
    'When this weblog is updated, Movable Type will automatically notify the selected sites.' => 'هنگامی که این وبلاگ به روز می شود، مووبل تایپ به صورت خودکار به سایت های انتخاب شده اطلاع می دهد.',
    'Setting Notice' => 'تذکر تنظیمات',
#   'Note: The above option may be affected since outbound pings are constrained system-wide.' => ': ',
#   'Note: This option is currently ignored since outbound pings are disabled system-wide.' => ': ',
    'Recently Updated Key:' => 'کلید Recent Updaed:',
    'If you have received a recently updated key (by virtue of your purchase), enter it here.' => 'اگر این سرویس را به طور رسمی خریداری کرده باشید به شما یک کلید Recently Updated داده می شود که می توانید آن را اینجا بنویسید.',
    'TrackBack Auto-Discovery' => 'شناسایی خودکار دنبالک',
    'Enable External TrackBack Auto-Discovery' => 'شناسایی دنبالک های خارجی فعال شود',
#   'Note: The above option is currently ignored since outbound pings are disabled system-wide.' => ': ',
    'Enable Internal TrackBack Auto-Discovery' => 'شناسایی دنبالک های داخلی فعال شود',
    'If you turn on auto-discovery, when you write a new post, any external links will be extracted and the appropriate sites automatically sent TrackBacks.' => 'اگر این گزینه را فعال کنید، آنگاه پس از ذخیره یک نوشته جدید، تمامی لینک های خارجی (لینک هایی که به دومین هایی بجز دومین فعلی شما داده شده اند) استخراج شده و برای آنها دنبالکی فرستاده می شود.',

    ## ./tmpl/cms/template_actions.tmpl
    'template' => 'قالب',
    'templates' => 'قالب ها',

    ## ./tmpl/cms/recover.tmpl
    'Your password has been changed, and the new password has been sent to your email address ([_1]).' => 'کلمه عبور شما تغییر کرد و کلمه عبور جدید به آدرس ایمیل شما ([_1]) ارسال شد.',
    'Enter your Movable Type username:' => 'نام کاربری خود را وارد کنید',
    'Enter your password recovery word/phrase:' => 'کلمه/عبارت برای بازیابی کلمه عبور را وارد کنید:',
    'Recover' => 'بازیابی',

    ## ./tmpl/cms/list_entry.tmpl
    'Your entry has been deleted from the database.' => 'نوشته شما حذف شد.',
    'Entry Feed' => 'فيد نوشته ها',
    'Entry Feed (Disabled)' => 'فید نوشته(غیر فعال)',
    'Show unpublished entries.' => 'نمایش نوشته های پیش نویس.',
    '(Showing all entries.)' => '(در حال نمايش تمام نوشته ها)',
    'Showing only entries where [_1] is [_2].' => 'نمايش نوشته هايي که [_1] آنها [_2] است.',
    'entries.' => 'نوشته ها.',
    'entries where' => 'از نوشته ها که',
    'author' => 'نویسنده',
    'tag (exact match)' => 'تگ (مطابقت کامل)',
    'tag (fuzzy match)' => 'تگ (مطابقت نسبی)',
    'category' => 'دسته بندی',
    'scheduled' => 'زمانبندى شده',
    'No entries could be found.' => 'هیچ نوشته ای یافت نشد.',

    ## ./tmpl/cms/list_template.tmpl
    'Index Templates' => 'قالب های اصلی',
    'Index templates produce single pages and can be used to publish Movable Type data or plain files with any type of content. These templates are typically rebuilt automatically upon saving entries, comments and TrackBacks.' => 'قالب های اصلی صفحات تکی می سازند و می توانید از آن ها برای انتشار اطلاعات مووبل تایپ و یا فایل های ساده با هر نوع محتوایی استفاده کنید. این قالب ها به صورت خود کار به مجرد ذخیره نوشته، نظرات و دنبالک ها باز سازی می شوند.',
    'Archive Templates' => 'قالب های آرشیو',
    'Archive templates are used for producing multiple pages of the same archive type.  You can create new ones and map them to archive types on the publishing settings screen for this weblog.' => 'قالب های آرشیو بر اساس نوع آرشیو چندین صفحه می سازند. شما می توانید یک قالب جدید و نقشه جدید انتشار انواع آرشیو  در صفحه تنظیمات انتشار برای این وبلاگ ایجاد کنید.',
    'System Templates' => 'قالب های سیستم',
    'System templates specify the layout and style of a small number of dynamic pages which perform specific system functions in Movable Type.' => 'قالب های سیستم، آرایش و شیوه تعداد کمی از صفحات دینامیک که برای اجرا کردن توابع سیستم در مووبل تایپ می باشند را تعیین می کنند.',
    'Template Modules' => 'قالب ماژول ها',
    'Template modules are mini-templates that produce nothing on their own but instead can be included into other templates.  They are excellent for duplicated content (e.g. header or footer content) and can contain template tags or just static text.' => 'ماژول های قالب، قالب های کوچکی هستند که امکان فراخوانی در قالب های دیگر را دارا می باشند. این ماژول ها برای تکثیر محتوی ( محتوی سرانداز و پانویس) بسیار مفید هستند و قابلیت در بر گیری تگ های قالب و یا متن ایستا را دارا می باشند.',
    'You have successfully deleted the checked template(s).' => 'قالب (های) مورد نظر با موفقیت حذف شد.',
    'Your settings have been saved.' => 'تنظیمات شما ذخیره شد.',
    'Indexes' => 'اصلی',
    'System' => 'سیستم',
    'Modules' => 'ماژول ها',
    'Go to Publishing Settings' => 'نمایش تنظیمات انتشار',
    'Create new index template' => 'ساخت یک قالب اصلی جدید',
    'Create New Index Template' => 'ساخت یک قالب اصلی جدید',
    'Create new archive template' => 'ساخت یک قالب آرشیو جدید',
    'Create New Archive Template' => 'ساخت یک قالب آرشیو جدید',
    'Create new template module' => 'ساخت یک قالب ماژول جدید',
    'Create New Template Module' => 'ساخت یک قالب ماژول جدید',
    'Template Name' => 'نام قالب',
    'Output File' => 'فایل خروجی',
    'Dynamic' => 'دینامیک',
    'Linked' => 'لینک شده',
    'Built w/Indexes' => 'باز سازی با اصلی',
    'Yes' => 'بله',
    'No' => 'خیر',
    'View Published Template' => 'نمایش قالب منتشر شده',
    'No index templates could be found.' => 'هیچ قالب اصلی یافت نشد.',
    'No archive templates could be found.' => 'هیچ قالب آرشیوی یافت نشد.',
    'No template modules could be found.' => 'هیچ قالب ماژولی یافت نشد.',

    ## ./tmpl/cms/list_tags.tmpl
    'Your tag changes and additions have been made.' => 'تغييرات مورد نظر شما بر روي تگ ها انجام شد.', 
    'You have successfully deleted the selected tags.' => 'تگ هاي انتخاب شده حذف شدند.', 
    'Tag Name' => 'عنوان تگ', 
    'Click to edit tag name' => 'براي ويرايش عنوان اين تگ روي آن کليک کنيد', 
    'Rename' => 'ذخيره عنوان جديد',
    'Show all entries with this tag' => 'نمايش ليست تمامي نوشته هايي که چنين تگي دارند', 
    '[quant,_1,entry,entries]' => '[_1] نوشته',
    'No tags could be found.' => 'هيچ تگي يافت نشد!', 

    ## ./tmpl/cms/error.tmpl
    'An error occurred:' => 'خطای زیر رخ داده است:',

    ## ./tmpl/cms/edit_author.tmpl
    'Your Web services password is currently' => 'کلمه عبور سرویس های وب شما در حال جاری',
    'Author Profile' => 'مشخصات نویسنده',
    'Create New Author' => 'ایجاد یک نویسنده جدید',
    'Profile' => 'مشخصات',
    'Permissions' => 'دسترسی',
    'Your profile has been updated.' => 'مشخصات شما به روز رسانی شد.',
    'Weblog Associations' => 'همکاری در وبلاگ های:',
    'General Permissions' => 'مجوز های عمومی',
    'System Administrator' => 'مدیریت کل سیستم',
    'Create Weblogs' => 'ساخت وبلاگ جدید',
    'View Activity Log' => 'گزارش فعالیت سیستم',
    'Username' => 'نام کاربری',
    'The name used by this author to login.' => 'نامی که نویسنده برای ورود به سیستم استفاده میکند.',
    'Display Name' => 'نام نمایشی',
    'The author\'s published name.' => 'نام منتشر شده نویسنده.',
    'The author\'s email address.' => 'آدرس ایمیل نویسنده.',
    'Website URL:' => 'آدرس وب سایت:',
    'The URL of this author\'s website. (Optional)' => 'آدرس وب سایت نویسنده (اختیاری)',
    'Language:' => 'زبان:',
    'The author\'s preferred language.' => 'زبان ارجح نویسنده.',
    'Tag Delimiter:' => 'جداکننده تگ ها:',
    'Comma' => 'کاما',
    'Space' => 'فاصله',
    'Other...' => 'دیگر...',
    'The author\'s preferred delimiter for entering tags.' => 'جداکننده مورد علاقه براي جداکردن تگ هاي هر نوشته.',
    'Password' => 'کلمه عبور',
    'Current Password:' => 'کلمه عبور فعلی:',
    'Enter the existing password to change it.' => 'برای تغییر کلمه عبور فعلی آن را وارد کنید.',
    'New Password:' => 'کلمه عبور جدید:',
    'Initial Password:' => 'کلمه عبور اولیه:',
    'Select a password for the author.' => 'برای نویسنده کلمه عبور انتخاب کنید.',
    'Password Confirm:' => 'تایید مجدد کلمه عبور:',
    'Repeat the password for confirmation.' => 'برای تایید مجددا کلمه عبور را وارد کنید.',
    'Password recovery word/phrase' => 'کلمه/عبارت برای بازیابی کلمه عبور',
    'This word or phrase will be required to recover your password if you forget it.' => 'از اين کلمه و يا عبارت براي بازيابي کلمه عبور در صورتي که آن را فراموش کرده باشيد استفاده ميشود.',
    'Web Services Password:' => 'کلمه عبور سرویس های وب:',
    'Reveal' => 'آشکارسازی',
    'For use by Activity feeds and with XML-RPC and Atom-enabled clients.' => 'برای استفاده از برنامه های XML-RPC ،  Atom-enabledو همچنين براي دسترسي به فيدهاي توليد شده توسط سيستم.',
    'Save this author (s)' => 'ذخیره نویسنده',

    ## ./tmpl/cms/notification_table.tmpl
    'Date Added' => 'تاریخ اضافه شدن',

    ## ./tmpl/cms/overview-left-nav.tmpl
    'List Weblogs' => 'لیست وبلاگ ها',
    'List Authors' => 'لیست نویسندگان',
    'Authors' => 'نویسندگان',
    'List Plugins' => 'لیست پلاگین ها',
    'Aggregate' => 'مجموع',
    'List Tags' => 'لیست تگ ها',
    'Configure' => 'تنظیم',
    'Edit System Settings' => 'ویرایش تنظیمات سیستم',
    'Utilities' => 'امکانات',
    'Search &amp; Replace' => 'جستجو و جایگزینی',
    'Show Activity Log' => 'نمایش گزارش فعالیت',
    'Activity Log' => 'گزارش فعالیت',

    ## ./tmpl/cms/copyright.tmpl

    ## ./tmpl/cms/view_log.tmpl
    'Are you sure you want to reset activity log?' => 'آیا مطمئن هستید که می خواهید ثبت فعالیت بازنشانی شود؟',
    'The Movable Type activity log contains a record of notable actions in the system.' => '«گزارش فعالیت سیستم» در  مووبل تایپ شامل لیستی از تمامی فعالیتهای مهم سیستم می باشد.',
    'All times are displayed in GMT[_1].' => 'تمامی زمانها به وقت گرینویچ محاسبه شده است',
    'All times are displayed in GMT.' => 'تمامی زمانها به وقت گرینویچ محاسبه شده است.',
    'The activity log has been reset.' => 'گزارش فعالیت شما تا این لحظه، پاک شد.',
    'Download CSV' => 'دریافت CSV',
    'Show only errors.' => 'فقط خطا ها نشان داده شود.',
    '(Showing all log records.)' => '(نمایش تمام ثبت سوابق)',
    'Showing only log records where' => 'نمایش تمام ثبت سوابق',
    'Filtered CSV' => 'فیلتر شده سی اس وی',
    'Filtered' => 'فیلتر شده',
    'Activity Feed' => 'فید فعالیت',
    'log records.' => 'ثبت سوابق',
    'log records where' => 'ثبت سوابق در',
    'level' => 'سطح',
    'classification' => 'دسته بندی',
    'Security' => 'امنیت',
    'Information' => 'اطلاعات',
    'Debug' => 'اشکال زدایی',
    'Security or error' => 'امنیت یا خطا',
    'Security/error/warning' => 'امنیت/خطا/هشدار',
    'Not debug' => 'بدون اشکال زدایی',
    'Debug/error' => 'اشکال زدایی/خطا',
    'No log records could be found.' => 'هیچ ثبت سوابقی یافته نشد.',

    ## ./tmpl/cms/tag_actions.tmpl
    'tag' => 'تگ', # Translate - Previous (1)
    'tags' => 'تگ ها', # Translate - Previous (1)
    'Delete selected tags (d)' => 'حذف تگ هاي انتخاب شده (d)', 

    ## ./tmpl/cms/rebuilding.tmpl
    'Rebuild' => 'باز سازی',
    'Rebuilding [_1]' => 'باز سازی  [_1]',
    'Rebuilding [_1] pages [_2]' => 'در حال باز سازی آرشیو [_1] صفحات [_2]',
    'Rebuilding [_1] dynamic links' => 'در حال باز سازی لینک های دینامیک صفحات [_1]',
    'Rebuilding [_1] pages' => 'در حال باز سازی صفحات [_1]',

    ## ./tmpl/cms/upload_confirm.tmpl
    'A file named \'[_1]\' already exists. Do you want to overwrite this file?' => 'فایلی با نام \'[_1]\' از قبل موجود است. آیا می خواهید این فایل را رو نویسی کنید؟',

    ## ./tmpl/cms/handshake_return.tmpl

    ## ./tmpl/cms/junk_results.tmpl
    'Find Junk' => 'یافتن هرزه ها',
#   'The following items may be junk. Uncheck the box next to any items are NOT junk and hit JUNK to continue.' => '/',
    'To return to the comment list without junking any items, click CANCEL.' => 'برای بازگشت به لیست نظر بدون هرزه کردن هیچ مورد، لغو را کلیک کنید.',
    'Commenter' => 'نظر دهنده',
    'Comment' => 'نظر',
    'IP' => 'آی پی', # Translate - Previous (1)
    'Junk' => 'هرزه',
    'Approved' => 'تایید شده',
    'Banned' => 'محروم شده',
    'Registered Commenter' => 'نظردهنده ثبت نام شده',
    'comment' => 'نظر',
    'comments' => 'نظر',
    'Return to comment list' => 'باز گشت به لیست نظر',

    ## ./tmpl/cms/import_end.tmpl
    'All data imported successfully!' => 'تمام اطلاعات با موفقیت وارد سازی شد!',
#   'Make sure that you remove the files that you imported from the \'import\' folder, so that if/when you run the import process again, those files will not be re-imported.' => '',
    'An error occurred during the import process: [_1]. Please check your import file.' => 'خطایی در پروسه ورود اطلاعات رخ داد:[_1].<br /> لطفا فایل خود را چک کنید! ',

    ## ./tmpl/cms/admin.tmpl
    'System Stats' => 'آمار سیستم',
    'Active Authors' => 'نویسنده های فعال',
    'Essential Links' => 'لینک های ضروری',
    'Movable Type Home' => 'Accueil Movable Type',
    'Plugin Directory' => 'مخزن پلاگین های مووبل تایپ',
    'Support and Documentation' => 'راهنما و پشتیبانی',
    'https://secure.sixapart.com/t/account' => 'https://secure.sixapart.com/t/account',
    'Your Account' => 'حساب کاربری شما',
    'https://secure.sixapart.com/t/help?__mode=edit' => 'https://secure.sixapart.com/t/help?__mode=edit',
    'Open a Help Ticket' => 'درخواست کمک و راهنمايي',
    'Paid License Required' => 'نسخه خریداری شده مورد نیاز است',
    'http://www.sixapart.com/movabletype/' => 'http://www.movabletype.ir',
    'http://www.sixapart.com/pronet/plugins/' => 'http://www.sixapart.com/pronet/plugins/', # Translate - Previous (6)
    'https://secure.sixapart.com/t/help?__mode=kb' => 'https://secure.sixapart.com/t/help?__mode=kb',
    'Knowledge Base' => 'پایگاه دانش مووبل تایپ',
    'http://www.sixapart.com/pronet/' => 'http://www.sixapart.com/pronet/', # Translate - Previous (5)
    'Professional Network' => 'شبکه کاربران حرفه ای',
    'From this screen, you can view information about and manage many aspects of your system across all weblogs.' => 'از طریق این بخش می توانید بسیاری از جنبه های سیستم را در تمام وبلاگ ها مشاهده و مدیریت کنید.',
    'Movable Type News' => 'اخبار مووبل تایپ فارسی',

    ## ./tmpl/cms/entry_table.tmpl
    'Weblog' => 'وبلاگ', # Translate - Previous (1)
    'Only show unpublished entries' => 'نمایش نوشته های منتشر نشده',
    'Only show published entries' => 'نمایش نوشته های منتشر شده',
    'Only show scheduled entries' => 'نمایش نوشته های زمانبندی شده',
    'None' => 'هیچکدام',

    ## ./tmpl/cms/pinged_urls.tmpl
    'Here is a list of the previous TrackBacks that were successfully sent:' => 'لیست دنبالک های پیشین که با موفقیت ارسال شده:',
#   'Here is a list of the previous TrackBacks that failed. To retry these, include them in the Outbound TrackBack URLs list for your entry.:' => '',

    ## ./tmpl/cms/edit_admin_permissions.tmpl
    'Your changes to [_1]\'s permissions have been saved.' => 'تغییرات شما در مجوز های [_1] ذخیره شد.',
    '[_1] has been successfully added to [_2].' => '[_1] به جمع نویسندگان بلاگ  [_2] اضافه شد.',
    'User can create weblogs' => 'این نویسنده می تواند وبلاگ ایجاد کند',
    'User can view activity log' => 'این نویسنده می تواند «گزارش فعالیت سیستم» را مشاهده کند.',
    'Check All' => 'انتخاب همه',
    'Uncheck All' => 'انتخاب هیچ',
    'Unheck All' => 'انتخاب هیچ',
    'Add user to an additional weblog:' => 'اضافه کردن این نویسنده به یک وبلاگ دیگر',
    'Select a weblog' => 'انتخاب کنید',
    'Add' => 'افزودن',
    'Save permissions for this author (s)' => 'مجوز های این نویسنده ذخیره شد',

    ## ./tmpl/cms/log_actions.tmpl
    'Reset Activity Log' => 'پاک کردن گزارش فعالیت ها ',

    ## ./tmpl/cms/rebuild_confirm.tmpl
    'Select the type of rebuild you would like to perform. (Click the Cancel button if you do not want to rebuild any files.)' => 'نوع باز سازی را با استفاده از منوی کشویی زیر تعیین کنید.<br />(اگر نمی خواهید هیچ فایلی را باز سازی کنید  دکمه لغو را فشار دهید).',
    'Rebuild All Files' => 'باز سازی تمام فایل ها',
    'Index Template: [_1]' => 'قالب اصلی: [_1]',
    'Rebuild Indexes Only' => 'فقط باز سازی صفحات اصلی',
    'Rebuild [_1] Archives Only' => 'فقط باز سازی آرشیوهای [_1] ',
    'Rebuild (r)' => 'باز سازی (r)',

    ## ./tmpl/cms/upgrade.tmpl
    'Time to Upgrade!' => 'زمان ارتقاء!',
#   'The version of Perl installed on your server ([_1]) is lower than the minimum supported version ([_2]).' => '',
#   'Do you want to proceed with the upgrade anyway?' => '',
    'A new version of Movable Type has been installed.  We\'ll need to complete a few tasks to update your database.' => 'نسخه جدید مووبل تایپ نصب شد. تنها چند عملیات دیگر برای به روز رسانی پایگاه داده باقی مانده است.',
#   'In addition, the following Movable Type plugins require upgrading or installation:' => '',
#   'The following Movable Type plugins require upgrading or installation:' => '',
    'Version [_1]' => 'نسخه [_1]', # Translate - Previous (2)
    'Begin Upgrade' => 'شروع ارتقاء!',

    ## ./tmpl/cms/reload_opener.tmpl

    ## ./tmpl/cms/notification_actions.tmpl
    'notification address' => 'عضو',
    'notification addresses' => 'عضو',
    'Delete selected notification addresses (x)' => 'حذف غضو انتخاب شده (x)',

    ## ./tmpl/cms/cc_return.tmpl

    ## ./tmpl/cms/login.tmpl
    'Your Movable Type session has ended. If you wish to log in again, you can do so below.' => 'ارتباط شما با مووبل تایپ قطع شده است، اگر می خواهید دوباره وارد سیستم شوید می توانید از این صفحه کمک بگیرید.',
    'Your Movable Type session has ended. Please login again to continue this action.' => 'ارتباط شما با مووبل تایپ قطع شده است، برای ادامه کار دوباره وارد سیستم شوید.',
    'Remember me?' => 'مرا به خاطر داشته باش',
    'Log In' => '  ورود  ',
    'Forgot your password?' => 'کلمه عبورتان را فراموش کرده اید؟ ',

    ## ./tmpl/cms/list_ping.tmpl
    'The selected TrackBack(s) has been published.' => 'دنبالک های انتخاب شده منتشر شد.',
    'All junked TrackBacks have been removed.' => 'تمام دنبالک های هرز شده حذف شد.',
    'The selected TrackBack(s) has been unpublished.' => 'دنبالک های انتخاب شده پیش نویس شد.',
    'The selected TrackBack(s) has been junked.' => 'دنبالک های انتخاب شده هرزه شد.',
    'The selected TrackBack(s) has been unjunked.' => 'دنبالک های انتخاب شده دیگر هرزه نیست.',
    'The selected TrackBack(s) has been deleted from the database.' => 'دنبالک های انتخاب شده حذف شد.',
    'No TrackBacks appeared to be junk.' => 'هیچ دنبالکی برای هرزه کردن نیست.',
    'Junk TrackBacks' => 'دنبالک های هرزه',
    'Trackback Feed' => 'فید دنبالک',
    'Trackback Feed (Disabled)' => 'فید دنبالک(غیر فعال)',
    'Show unpublished TrackBacks.' => 'نمایش دنبالک های منتشر نشده.',
    '(Showing all TrackBacks.)' => ' (در حال نمایش تمام دنبالک ها)',
    'Showing only TrackBacks where [_1] is [_2].' => 'نمايش دنبالک هايي که [_1] آنها [_2] است.',
    'TrackBacks.' => 'دنبالک ها.',
    'TrackBacks where' => 'از دنبالک ها که',
    'No TrackBacks could be found.' => 'هیچ دنبالکی یافت نشد.',
    'No junk TrackBacks could be found.' => 'هیچ دنبالک هرزه ای یافت نشد.',

    ## ./tmpl/cms/recover_password_result.tmpl
    'Recover Passwords' => 'بازیابی کلمات عبور',
    'No authors were selected to process.' => 'هیچ نویسنده ای برای پردازش انتخاب نشده.',

    ## ./tmpl/cms/feed_link.tmpl
    'Activity Feed (Disabled)' => 'فید فعالیت (غیر فعال)',

    ## ./tmpl/cms/ping_actions.tmpl
    'to publish' => 'منتشرشدن',
    'Publish' => 'منتشر',
    'Publish selected TrackBacks (p)' => 'انتشار دنبالک های انتخاب شده (p)',
    'Delete selected TrackBacks (x)' => 'حذف دنبالک های انتخاب شده (x)',
    'Junk selected TrackBacks (j)' => 'هرزه کردن دنبالک های انتخاب شده (j)',
    'Not Junk' => 'هرزه نیست',
    'Recover selected TrackBacks (j)' => 'بازیابی دنبالک های انتخاب شده (j)',
    'Are you sure you want to remove all junk TrackBacks?' => 'آیا مطمئن هستید که میخواهید تمام دنبالک های هرز شده حذف شود؟',
    'Empty Junk Folder' => 'حذف تمامي نظرات هرزه',
    'Deletes all junk TrackBacks' => 'حذف تمام دنبالک های هرز شده.',
    'Ban This IP' => 'محروم کردن این آی پی',

    ## ./tmpl/cms/ping_table.tmpl
    'From' => 'از',
    'Target' => 'صفحه مقصد',
    'Only show published TrackBacks' => 'نمایش دنبالک های منتشر شده',
    'Only show pending TrackBacks' => 'نمایش دنبالک های معلق',
    'Edit this TrackBack' => 'ویرایش دنبالک',
    'Edit TrackBack' => 'ویرایش دنبالک',
    'Go to the source entry of this TrackBack' => 'نمایش نوشته منبع دنبالک',
    'View the [_1] for this TrackBack' => 'نمایش [_1] برای دنبالک',
    'Search for all comments from this IP address' => 'جستجو برای تمام نظرات از این آدرس IP',

    ## ./tmpl/cms/log_table.tmpl
    'IP: [_1]' => 'آی پی: [_1]',

    ## ./tmpl/cms/edit_profile.tmpl
    'Author Permissions' => 'مجوز های نویسنده',
    'A new password has been generated and sent to the email address [_1].' => 'کلمه عبور جدید ساخته و به آدرس ایمیل [_1] ارسال شده.',
    'Password Recovery' => 'بازیابی کلمه عبور',

    ## ./tmpl/cms/edit_commenter.tmpl
    'Commenter Details' => 'اطلاعات نظر دهنده',
    'The commenter has been trusted.' => 'نظر دهنده قابل اعتماد شد.',
    'The commenter has been banned.' => 'نظر دهنده محروم شد.',
    'View all comments with this name' => 'نمایش تمام نظرات با این نام',
    'Identity' => 'هویت',
    'Email' => 'ایمیل',
    'Withheld' => 'محفوظ است',
    'View all comments with this email address' => 'نمایش تمام نظرات با این آدرس ایمیل',
    'View all comments with this URL address' => 'نمایش تمام نظرات با این آدرس وب',
    'Trusted' => 'قابل اعتماد',
    'Blocked' => 'مسدود شده',
    'Authenticated' => 'تعیین اعتبار شده',
    'View all commenters with this status' => 'نمایش تمام نظر دهندگان با این وضعیت',

    ## ./tmpl/cms/edit_permissions.tmpl

    ## ./tmpl/cms/author_actions.tmpl
    'author' => 'نویسنده',
    'Delete selected authors (x)' => 'حذف کاربر های انتخاب شده (x)',

    ## ./tmpl/cms/install.tmpl
    'Welcome to Movable Type!' => 'به مووبل تایپ خوش آمدید!',
#   'Do you want to proceed with the installation anyway?' => '',
    'Before you can begin blogging, we need to complete your installation by initializing your database.' => 'پیش از اینکه بتوانید کار با وبلاگ را آغاز کنید، باید پایگاه داده ساخته و آماده کار شود.',
    'You will need to select a username and password for the administrator account.' => 'شما به یک نام کاربری و کلمه عبور برای حساب مدیر نیاز دارید.',
    'Select a password for your account.' => 'برای حساب خود کلمه عبور انتخاب کنید.',
    'Password recovery word/phrase:' => 'کلمه/عبارت بازیابی کلمه عبور:',
    'Finish Install' => 'پایان نصب',

    ## ./tmpl/cms/comment_table.tmpl
    'Only show published comments' => 'نمایش نظرات منتشر شده',
    'Only show pending comments' => 'نمایش نظرات در حال انتظار',
    'Edit this comment' => 'ویرایش این نظر',
    'Edit Comment' => 'ویرایش نظر',
    'Edit this commenter' => 'ویرایش این نظر دهنده',
    'Search for comments by this commenter' => 'جستجو برای نظرات این نظر دهنده',
    'View this entry' => 'نمایش این نوشته',
    'Show all comments on this entry' => 'نمایش تمام نظرات این نوشته',

    ## ./tmpl/cms/list_banlist.tmpl
    'IP Banning Settings' => 'تنظیمات بستن آی پی',
    'This screen allows you to ban comments and TrackBacks from specific IP addresses.' => 'در این صفحه می توانید نظرات و دنبالک ها از یک آدرس IP خاص را تحریم کنید.',
    'You have banned [quant,_1,address,addresses].' => 'شما [_1] آدرس محروم شده دارید.',
    'You have added [_1] to your list of banned IP addresses.' => 'شما IP [_1] را به لیست IP های بسته شده خودتان اضافه کردید.',
    'You have successfully deleted the selected IP addresses from the list.' => 'IP (های) انتخاب شده را با موفقیت از لیست حذف کردید.',
    'Ban New IP Address' => 'بستن آدرس آی پی جدید',
    'Ban IP Address' => 'محروم کردن آدرس آی پی',
    'Date Banned' => 'تاریخ بسته شدن',
    'IP address' => 'آدرس آی پی',
    'IP addresses' => 'آدرس های آی پی',

    ## ./tmpl/cms/bookmarklets.tmpl
    'QuickPost' => 'ارسال سریع',
    'Add QuickPost to Windows right-click menu' => '«ارسال سریع» را به منوی راست کلیک موس خود اضافه کنید.',
    'Configure QuickPost' => 'تنظیم ارسال سریع',
    'Include:' => 'شامل:',
    'TrackBack Items' => 'ارسال دنبالک',
    'Allow Comments' => 'نظرخواهی',
    'Allow TrackBacks' => 'پذیرش دنبالک',
    'Create' => 'بساز',

    ## ./tmpl/cms/category_add.tmpl
    'Add A Category' => 'دسته جدید...',
    'To create a new category, enter a title in the field below, select a parent category, and click the Add button.' => 'براي ايجاد يک دسته جديد ابتدا عنوان آن و سپس دسته ای را که میخواهید در زیر آن قرار بگیرد وارد کرده و در انتها آن را ذخیره کنید.',
    'Category Title:' => 'عنوان دسته:',
    'Parent Category:' => 'دسته پدری:',
    'Top Level' => 'بالاترین سطح',
    'Save category (s)' => 'ذخیره دسته (s)',

    ## ./tmpl/cms/import_start.tmpl
    'Importing...' => 'وارد سازی...',
    'Importing entries into blog' => 'وارد سازی نوشته ها به وبلاگ',
    'Importing entries as author \'[_1]\'' => 'وارد سازی نوشته ها به عنوان نویسنده \'[_1]\'',
    'Creating new authors for each author found in the blog' => 'برای هر نویسنده یافته شده در وبلاگ یه نویسنده جدید ایجا شود.',

    ## ./tmpl/cms/list_notification.tmpl
    'Notifications' => 'اطلاع رسانی',
#   'Below is the notification list for this blog. When you manually send notifications on published entries, you can select from this list.' => '',
    'You have [quant,_1,user,users,no users] in your notification list.' => 'تعداد اعضای کتابچه آدرس شما [_1] نفر می باشد',
    'You have added [_1] to your notification list.' => 'شما [_1] را به کتابچه آدرس خود اضافه کردید.',
    'You have successfully deleted the selected notifications from your notification list.' => 'آدرس های مورد نظر شما با موفقیت حذف شد.',
    'Create New Notification' => 'اضافه کردن یک عضو جدید',
    'URL (Optional):' => 'آدرس وب (اختیاری):',
    'Add Recipient' => 'ذخـیــره',
    'No notifications could be found.' => 'هیچ عضوی یافت نشد.',

    ## ./tmpl/cms/itemset_action_widget.tmpl
    'More actions...' => 'فرمانهای اضافی...', 
    'No actions' => 'فرمانی وجود ندارد',

    ## ./tmpl/cms/edit_blog.tmpl
    'You must set your Local Site Path.' => 'می بایست مسیر محلی سایت خود را تنظیم کنید.',
    'You must set your Site URL.' => 'می بایست آدرس وب وبلاگ را تنظیم کنید.',
    'Your Site URL is not valid.' => 'آدرس وب وبلاگ شما معتبر نیست.',
    'You can not have spaces in your Site URL.' => 'نمی توانید در آدرس وب سایت از فاصله استفاده کنید.',
    'You can not have spaces in your Local Site Path.' => 'نمی توانید در مسیر سایت از فاصله استفاده کنید.',
    'Your Local Site Path is not valid.' => 'مسیر محلی وبلاگ شما معتبر نیست.',
    'New Weblog Settings' => 'تنظیمات وبلاگ جدید',
    'From this screen you can specify the basic information needed to create a weblog.  Once you click the save button, your weblog will be created and you can continue to customize its settings and templates, or just simply start posting.' => 'در این صفحه شما اطلاعات اساسی مورد نیاز برای ساخت یک وبلاگ جدید را وارد می کنید. به محض اینکه دکمه «ذخیره تغییرات» را بزنید وبلاگ شما ساخته می شود و در ادامه می توانید قالب ها و یا تنظیمات را تغییر داده و یا به سادگی شروع به نوشتن مطالب خود کنید.',
    'Your weblog configuration has been saved.' => 'تنظیمات وبلاگ شما ذخیره شده است.',
    'Site URL:' => 'آدرس وب سایت:',
    'Enter the URL of your public website. Do not include a filename (i.e. exclude index.html).' => 'URL وبلاگ خود را وارد کنید. دقت کنید که این URL نباید شامل هیچ نام فایلی باشد.',
    'Example:' => 'مثال:<p style="direction:ltr;">',
    'Site Root' => 'ریشه سایت',
    'Enter the path where your main index file will be located. An absolute path (starting with \'/\') is preferred, but you can also use a path relative to the Movable Type directory.' => 'ریشه سایت، مسیری روی سرور شماست که فایل اصلی (ایندکس) در آن قرار می گیرد. ترجیحا یک مسیر مطلق (که با \'/\' شروع می شود) وارد کنید، اما یک مسیر نسبی (نسبت به شاخه اصلی مووبل تایپ) نیز قابل قبول است.',

    ## ./tmpl/cms/blog-left-nav.tmpl
    'Posting' => 'ارسال',
    'New Entry' => 'نوشته جدید',
    'Community' => 'دیگران',
    'List Commenters' => 'لیست نظر دهندگان',
    'Commenters' => 'نظر دهندگان',
    'Edit Notification List' => 'تغییر لیست اطلاع رسانی',
    'List &amp; Edit Templates' => 'لیست و ویرایش قالب ها',
    'Edit Categories' => 'تغییر دسته ها ',
    'Edit Tags' => 'ویرایش تگ ها',
    'Edit Weblog Configuration' => 'تغییر تنظیمات وبلاگ',
    'Import &amp; Export Entries' => 'ورود و صدور نوشته ها',
    'Rebuild Site' => 'باز سازی سایت',

    ## ./tmpl/cms/spam_confirm.tmpl
#   'These domain names were found in the selected comments. Check the box at right to block comments and trackbacks containing that URL in the future.' => '',
    'Block' => 'مسدود کردن',

    ## ./tmpl/cms/edit_category.tmpl
    'You must specify a label for the category.' => 'می بایست نامی برای دسته تعیین کنید.',
    'Edit Category' => 'ویرایش دسته',
    'Use this page to edit the attributes of the category [_1]. You can set a description for your category to be used in your public pages, as well as configuring the TrackBack options for this category.' => 'از این صفحه برای تغییر ویژگی های دسته  «[_1]» استفاده کنید. ',
    'Your category changes have been made.' => 'تغییرات شما در این دسته اعمال و ذخیره شد.',
    'Label' => 'عنوان',
#   'Unlock this category\'s output filename for editing' => '',
    'Warning: Changing this category\'s basename may break inbound links.' => 'هشدار: ممکن است تغییر نام پایه دسته موجب قطع لینک های داخلی شود.',
    'Save this category (s)' => 'دخیره این دسته (s)',
    'Inbound TrackBacks' => 'دنبالک های رسیده',
    'If enabled, TrackBacks will be accepted for this category from any source.' => 'اگر فعال شود، دنبالک ها از همه منابع برای این دسته پذیرفته می شودند.',
    'TrackBack URL for this category' => 'دنبالک های رسیده برای این دسته',
    'This is the URL that others will use to send TrackBacks to your weblog. If you wish for anyone to send TrackBacks to your weblog when they have a post specific to this category, post this URL publicly. If you choose to only allow a select group of individuals to TrackBack, send this URL to them privately.' => 'این آدرسی است که دیگران می توانند از آن برای فرستادن دنبالک برای این دسته از وبلاگ شما استفاده کنند. اگر مایلید که همه بتوانند برای این دسته از وبلاگ شما دنبالک بفرستند می توانید آدرس زیر را به صورت عمومی در وبلاگ خود منتشر کنید. اگر هم می خواهید تنها عده معدودی این امکان داشته باشند، این آدرس را به صورت خصوصی برایشان بفرستید.',
#   'Passphrase Protection' => '',
    'Optional.' => 'اختیاری.',
    'Outbound TrackBacks' => 'دنبالک های ارسالی',
    'Enter the URL(s) of the websites that you would like to send a TrackBack to each time you post an entry in this category. (Separate URLs with a carriage return.)' => 'آدرس وب سایت هایی که مایلید به هنگام ارسال نوشته جدید در این دسته به آن ها دنبالک ارسال شود را وارد کنید. ( در هر خط یک آدرس)',

    ## ./tmpl/cms/edit_template.tmpl
#   'You have unsaved changes to your template that will be lost.' => '',
    'Edit Template' => 'تغییر قالب',
    'Your template changes have been saved.' => 'تغییرات قالب شما ذخیره شد.',
    'Rebuild this template' => 'باز سازی این قالب',
    'Build Options' => 'استراتژی کلی باز سازی',
    'Enable dynamic building for this template' => 'بازسازی این قالب به صورت دینامیک',
    'Rebuild this template automatically when rebuilding index templates' => 'در هنگام بازسـازی قالب های صفحــات اصــلی این قالب هم به طور خودکار بازسازی شود.',
    'Comment Listing Template' => 'قالب نظرخواهی',
    'Comment Preview Template' => 'قالب پیش نمایش نظرخواهی',
    'Search Results Template' => 'قالب نتایج جستجو',
    'Comment Error Template' => 'قالب خطاهای نظرخواهی',
    'Comment Pending Template' => 'قالب نظراتِ در انتظار تایید ',
    'Commenter Registration Template' => 'قالب ثبت نام نظر دهندگان',
    'TrackBack Listing Template' => 'قالب لیست دنبالک ها',
    'Uploaded Image Popup Template' => 'قالب نمایش عکس در صفحه مجزا',
    'Dynamic Pages Error Template' => 'قالب خطای صفحات دینامیک',
    'Link this template to a file' => 'لینک کردن این قالب با فایل :',
    'Module Body' => 'کدهای ماژول',
    'Template Body' => 'کدهای قالب',
    'Insert...' => 'درج...',
    'Save this template (s)' => 'ذخیره این قالب (s)',
    'Save and Rebuild' => 'ذخیره و باز سازی',
    'Save and rebuild this template (r)' => 'ذخیره و باز سازی این قالب (r)',

    ## ./tmpl/cms/pager.tmpl
    'Show Display Options' => 'تغییر نحوه نمایش',
    'Display Options' => 'تنظیمات نمایشی',
    'Show:' => 'نمایش:',
    '[quant,_1,row]' => '[_1] ردیف',
    'all rows' => 'تمام ردیف ها',
    'Another amount...' => 'مقدار دلخواه...',
    'View:' => 'طریقه نمایش:',
    'Compact' => 'فشرده',
    'Expanded' => 'مبسوط',
    'Actions' => 'فعالیتها  ', # Translate - Previous (1)
    'Date Display:' => 'نمایش تاریخ:',
    'Relative' => 'نسبی',
    'Full' => 'مطلق',
    'Open Batch Editor' => 'باز کردن ویرایشگر گروهی',
    'Newer' => 'جدیدتر   ',
    'Showing:' => 'در حال نمایش:',
    'of' => 'از',
    'Older' => '   قدیمی تر',

    ## ./tmpl/cms/rebuilt.tmpl
    'All of your files have been rebuilt.' => 'تمامی فایل های شما باز سازی شد.',
    'Your [_1] has been rebuilt.' => 'صفحه [_1] شما باز سازی شد.',
    'Your [_1] pages have been rebuilt.' => 'صفحات [_1] شما باز سازی شد.',
    'View this page' => 'نمایش این صفحه',
    'Rebuild Again' => 'باز سازی مجدد',

    ## ./tmpl/cms/cfg_feedback.tmpl
    'Feedback Settings' => 'تنظیمات نظر خواهی/دنبالک',
    'This screen allows you to control the feedback settings for this weblog, including comments and TrackBacks.' => 'در این صفحه می توانید تنظیمات نظر خواهی/دنبالک ها برای این وبلاگ به ضمیمه نظرات و دنبالک ها کنترل کنید.',
    'To see the changes reflected on your public site, you should rebuild your site now.' => ' برای مشاهده تغییرات ایجاد شده بر روی سایت خود باید عمل باز سازی را انجام دهید.',
    'Rebuild my site' => 'باز سازی کن',
    'Rebuild indexes' => 'باز سازی صفحات اصلی',
    'Note: Commenting is currently disabled at the system level.' => 'توجه: در حال حاضر نظرخواهی در سطح سیستم غیر فعال می باشد.',
    'Comment authentication is not available because one of the needed modules, MIME::Base64 or LWP::UserAgent is not installed. Talk to your host about getting this module installed.' => 'تعیین اعتبار نظرات به علت احتیاج به ماژول های MIME::Base64  یا LWP::UserAgent مقدور نمی باشد. برای نصب این ماژول ها با هاست خود تماس بگیرید.',
    'Accept comments from' => 'پذیرش نظرات از',
    'Anyone' => 'هر کس',
    'Authenticated commenters only' => 'فقط نظردهندگان تعیین اعتبار شده',
    'No one' => 'هیچکس',
    'Specify from whom Movable Type shall accept comments on this weblog.' => 'کسانی که می بایست نظرات آن ها پذیرفته شود را تعیین کنید.',
    'Authentication Status' => 'وضعیت تعیین اعتبار',
    'Authentication Enabled' => 'تعیین اعتبار فعال شده',
    'Authentication is enabled.' => 'تعیین اعتبار فعال شده',
    'Clear Authentication Token' => 'پاک کردن رمز تعیین اعتبار',
    'Authentication Token:' => 'رمز تعیین اعتبار',
    'Authentication Token Removed' => 'رمز تعیین اعتبار حذف شد',
    'Please click the Save Changes button below to disable authentication.' => 'لطفا برای غیر فعال کردن تعیین اعتبار بر روی کلید ذخیره تغییرات در زیر کلیک کنید.',
    'Authentication Not Enabled' => 'تعیین اعتبار فعال نیست.',
#   'Note: You have selected to accept comments from authenticated commenters only but authentication is not enabled. In order to receive authenticated comments, you must enable authentication.' => '',
    'Authentication is not enabled.' => 'تعیین اعتبار فعال نیست.',
    'Setup Authentication' => 'برپایی تعیین اعتبار',
    'Or, manually enter token:' => 'یا، رمز را به صورت دستی وارد کنید:',
    'Authentication Token Inserted' => 'رمز تعیین اعتبار درج شده',
    'Please click the Save Changes button below to enable authentication.' => 'لطفا برای فعال کردن معتبر سازی بر روی کلید ذخیره تغییرات در زیر کلیک کنید.',
    'Establish a link between your weblog and an authentication service. You may use TypeKey (a free service, available by default) or another compatible service.' => 'بر قراری ارتباط میان وبلاگ شما و سرویس تعیین اعتبار. شما می تونید از TypeKey (یک سرویس رایگان، در دسترس به صورت پیش فرض) یا سرویس ساز گار دیگری استفاده کنید.',
    'Require E-mail Address' => 'آدرس ایمیل لازم است',
    'If enabled, visitors must provide a valid e-mail address when commenting.' => 'بازدیدکنندگان در هنگام نظردهی می بایست یک آدرس ایمیل معتبر وارد کنند.',
    'Immediately publish comments from' => 'انتشار فوری نظرات',
    'Trusted commenters only' => 'نظر دهندگان قابل اعتماد',
    'Any authenticated commenters' => 'نظردهندگان تعیین اعتبار شده',
#   'Specify what should happen to comments after submission. Unpublished comments are held for moderation and junk comments do not appear.' => ' ',
    'Unpublished comments are held for moderation.' => 'سایر نظراتی که به صورت فوری منتشر نمی شوند، تنها پس از تایید شما انتشار می یابند.',
    'E-mail Notification' => 'اطلاع رسانی با ایمیل',
    'On' => 'بلی',
    'Only when attention is required' => 'تنها در مواقعی که نیاز به توجه دارد',
    'Specify when Movable Type should notify you of new comments if at all.' => 'آیا مایلید مووبل تایپ شما از دریافت نظرات جدید در وبلاگ از طریق ایمیل مطلع سازد؟',
    'Allow HTML' => 'پذیرش HTML',
    'If enabled, users will be able to enter a limited set of HTML in their comments. If not, all HTML will be stripped out.' => 'اگر فعال شود، کاربران قادر خواهند بود که تعداد محدودی از تگ های HTML را در هنگام نظر دهی وارد کنند. اگر نه، تمام تگ های HTML غیر فعال می شوند.',
    'Auto-Link URLs' => 'تبدیل اتوماتیک آدرس های وب به لینک',
    'If enabled, all non-linked URLs will be transformed into links to that URL.' => 'اگر فعال شود، تمام آدرس های وب لینک نشده به لینک تبدیل می شوند.',
    'Specifies the Text Formatting option to use for formatting visitor comments.' => 'قالب بندی مورد استفاده در نمایش نظرات بازدیدکنندگان را انتخاب کنید.',
    'Note: TrackBacks are currently disabled at the system level.' => 'توجه: در حال حاضر دنبالک در سطح سیستم غیر فعال می باشد.',
    'If enabled, TrackBacks will be accepted from any source.' => 'اگر فعال شود، دنبالک ها از تمام منابع پذیرفته می شوند.',
    'Moderation' => 'مدیریت',
    'Hold all TrackBacks for approval before they\'re published.' => 'تمام دنبالک ها را قبل از انتشار برای تایید نگهداری می کند.',
    'Specify when Movable Type should notify you of new TrackBacks if at all.' => 'آیا مایلید مووبل تایپ شما از دریافت دنبالک های جدید در وبلاگ از طریق ایمیل مطلع سازد؟',
    'Junk Score Threshold' => 'حداقل علامت برای غیر هرزه ها',
    'Less Aggressive' => 'کمتر',
    'More Aggressive' => 'بیشتر',
    'Comments and TrackBacks receive a junk score between -10 (complete junk) and +10 (not junk). Feedback with a score which is lower than the threshold shown above will be marked as junk.' => 'نظرات و دنبالک ها هرکدام یک علامت هرزگی بین ۱۰- (کاملا هرزه!) و ۱۰ (غیر هرزه) می گیرند. نظر و یا دنبالکی که علامتی کمتر از مقدار مشخص شده در بالا داشته باشد یک نظر یا دنبالک هرزه به حساب می آید. این مقدار در واقع میزان سخت گیری شما را مشخص می کند. مقدار توصیه شده صفر می باشد.',
    'Auto-Delete Junk' => 'حذف خودکار هرزه',
    'If enabled, junk feedback will be automatically erased after a number of days.' => 'اگر فعال شود، نظرات/دنبالک های هرزه پس از چند روز به صورت خودکار حذف می شوند.',
    'Delete Junk After' => 'حذف هرزه بعد از',
    'days' => 'روز',
    'When an item has been marked as junk for this many days, it is automatically deleted.' => 'هنگامی که مورد هرزه ای پیش از این تعداد روز باقی بماند، به صورت خودکار حذف می شود.',

    ## ./tmpl/cms/comment_actions.tmpl
    'Publish selected comments (p)' => 'انتشار نظرات انتخاب شده (p)',
    'Delete selected comments (x)' => 'حذف نظرات انتخاب شده (x)',
    'Junk selected comments (j)' => 'هرزه کردن نظرات انتخاب شده (j)',
    'Recover selected comments (j)' => 'بازیابی نظرات انتخاب شده (j)',
    'Are you sure you want to remove all junk comments?' => 'آیا مطمئن هستید که می خواهید تمام نظرات هرزه شده حذف شود؟',
    'Deletes all junk comments' => 'حذف تمام نظرات هرزه شده',

    ## ./tmpl/cms/author_table.tmpl

    ## ./tmpl/cms/header.tmpl
    'Go to:' => 'برو به:',
    'Select a blog' => 'انتخاب کنید...',
    'System-wide listing' => 'لیست کلی سیستم',

    ## ./tmpl/cms/edit_comment.tmpl
    'The comment has been approved.' => 'این نظر مورد تایید شما قرار گرفته و منتشر شد.',
    'List &amp; Edit Comments' => 'لیست و ویرایش نظرات',
    'Pending Approval' => 'در انتظار تایید',
    'Junked Comment' => 'نظرات هرزه',
    'View all comments with this status' => 'نمایش تمام نظرات با این وضعیت',
    '(Trusted)' => '(قابل اعتماد)',
    'Ban&nbsp;Commenter' => 'محروم شود',
    'Untrust&nbsp;Commenter' => 'غیر قابل اعتماد است',
    '(Banned)' => '(محروم شده)',
    'Trust&nbsp;Commenter' => 'قابل اعتماد است',
    'Unban&nbsp;Commenter' => 'لغو تحریم',
    'View all comments by this commenter' => 'نمایش تمام نظرات این نظر دهنده',
    'None given' => 'نا معلوم',
    'View all comments with this URL' => 'نمایش تمام نظرات با این آدرس وب',
    'Entry no longer exists' => 'نوشته ای دیگر وجود ندارد',
    'No title' => 'بی عنوان',
    'View all comments on this entry' => ' نمایش تمام نظرات این نوشته',
    'View all comments posted on this day' => 'نمایش نظرات ارسال شده در این روز',
    'View all comments from this IP address' => ' نمایش تمام نظرات رسیده از این IP آدرس',
    'Save this comment (s)' => 'ذخیره این نظر (s)',
    'Delete this comment (x)' => 'حذف این نظر (x)',
    'Final Feedback Rating' => 'امتیاز نهايي تمامی تست ها',
    'Test' => 'آزمایش', # Translate - Previous (1)
    'Score' => 'علامت', # Translate - Previous (1)
    'Results' => 'نتایج',

    ## ./tmpl/cms/list_author.tmpl
    'You have successfully deleted the authors from the Movable Type system.' => 'نویسنده مورد نظر از سیستم حذف شد!',
    'Created By' => 'ساخته شده توسط',
    'Last Entry' => 'آخرین نوشته',

    ## ./tmpl/cms/pending_commenter.tmpl

    ## ./tmpl/cms/header-popup.tmpl

    ## ./tmpl/cms/edit_ping.tmpl
    'The TrackBack has been approved.' => 'دنبالک پذیرفته شد.',
    'List &amp; Edit TrackBacks' => 'لیست و ویرایش دنبالک ها',
    'Junked TrackBack' => 'دنبالک های هرزه',
    'Status:' => 'وضعیت:',
    'View all TrackBacks with this status' => 'نمایش تمامی دنبالک ها با این وضعیت',
    'Source Site:' => 'سایت منبع:',
    'Search for other TrackBacks from this site' => 'جستجو برای دنبالک های دیگری که از سایتی با این نام رسیده اند',
    'Source Title:' => 'عنوان منبع:',
    'Search for other TrackBacks with this title' => 'جستجو برای دنبالک های دیگری که از نوشته ای با این عنوان رسیده اند',
    'Search for other TrackBacks with this status' => 'جستجو برای دنبالک های دیگری که از سایتی با این آدرس رسیده اند',
    'Target Entry:' => 'نوشته مقصد:',
    'View all TrackBacks on this entry' => 'نمایش تمام دنبالک های این نوشته',
    'Target Category:' => 'دسته مقصد:',
    'Category no longer exists' => 'دسته وجود ندارد',
    'View all TrackBacks on this category' => 'نمایش تمام دنبالک های این دسته',
    'View all TrackBacks posted on this day' => 'نمایش تمام نظرات ارسال شده در این روز',
    'View all TrackBacks from this IP address' => 'نمایش تمام نظرات ارسال شده از این آدرس IP',
    'Save this TrackBack (s)' => 'ذخیره این دنبالک (s)',
    'Delete this TrackBack (x)' => 'حذف این دنبالک(x)',

    ## ./tmpl/cms/pinging.tmpl
    'Pinging sites...' => 'در حال فرستادن دنبالک ...',

    ## ./tmpl/cms/upgrade_runner.tmpl
    'Installation complete!' => 'نصب کامل شد!',
    'Upgrade complete.' => 'ارتقاء کامل شد.',
    'Initializing database...' => 'مقدار دهی پایگاه داده...',
    'Upgrading database...' => 'ارتقاء پایگاه داده...',
    'Starting installation...' => 'شروع نصب...',
    'Starting upgrade...' => 'شروع بروز رسانی...',
    'Error during installation:' => 'خطا دز جریان نصب:',
    'Error during upgrade:' => 'خطا در جریان ارتقاء',
    'Installation complete!' => 'نصب کامل شد!',
    'Upgrade complete!' => 'ارتقاء کامل شد!',
    'Login to Movable Type' => 'ورود به مووبل تایپ',
    'Return to Movable Type' => 'بازگشت به مووبل تایپ',
    'Your database is already current.' => 'پابگاه داده از قبل موجود است.',

    ## ./tmpl/cms/cfg_simple.tmpl
    'This screen allows you to control all settings specific to this weblog.' => 'این صفحه امکان کنترل تمام تنظیمات مختص به این وبلاگ را برای شما فراهم می نماید.',
    'Publishing Paths' => 'مسیر انتشار',
    'Enter the URL of your website. Do not include a filename (i.e. exclude index.html).' => 'URL وبلاگ خود را وارد کنید. دقت کنید که این URL نباید شامل هیچ نام فایلی باشد.',
    'Enter the path where your index files will be published. An absolute path (starting with \'/\') is preferred, but you can also use a path relative to the Movable Type directory.' => 'ریشه سایت، مسیری روی سرور شماست که فایل اصلی (ایندکس) در آن قرار می گیرد. ترجیحا یک مسیر مطلق (که با \'/\' شروع می شود) وارد کنید، اما یک مسیر نسبی (نسبت به شاخه اصلی مووبل تایپ) نیز قابل قبول است.',
    'You can configure the publishing model for this blog (static vs dynamic) on the ' => 'می توانید نحوه انتشار این وبلاگ را (استاتیک در برابر داینامیک) در صفحه ',
    'Detailed Settings' => 'تنظیمات جزئیات',
    ' page.' => ' تنظیم کنید.', # Translate - Previous (2)
#   'Choose to display a number of recent entries or entries from a recent number of days.' => '',
    'Specify which types of commenters will be allowed to leave comments on this weblog.' => 'انواع نظر دهنده گانی که مجاز به گذاشتن نظرات در این وبلاگ می باشند تعیین کنید.',
#   'If you want to require visitors to sign in before leaving a comment, set up authentication with the free TypeKey service.' => '',
#   'Specify what should happen to comments after submission. Unpublished comments are held for moderation and junk comments do not appear.' => '',
#   'Accept TrackBacks from people who link to your weblog.' => '',

    ## ./tmpl/cms/list_blog.tmpl
    'System Shortcuts' => 'مدیریت سیستم',
    'Concise listing of weblogs.' => 'لیست کاملی از وبلاگ های شما.',
    'Create, manage, set permissions.' => 'مدیریت و تنظیم اختیارات نویسندگان.',
    'What\'s installed, access to more.' => 'لیستی از پلاگین های موجود در سیستم.',
    'Multi-weblog entry listing.' => 'لیست نوشته های تمام وبلاگ های شما.',
    'Multi-weblog comment listing.' => 'لیست نظرات تمام وبلاگ های شما.',
    'Multi-weblog tag listing.' => 'لیست تگ های تمام وبلاگ های شما.',
    'Multi-weblog TrackBack listing.' => 'لیست دنبالک های تمام وبلاگ های شما.',
    'System-wide configuration.' => 'تنظیمات کلی سیستم.',
    'Find everything. Replace anything.' => 'جستجوی همه چیز، جایگزینی هر چیز!',
    'What\'s been happening.' => 'شرحی از اتفاقات رخ داده در سیستم.',
    'Status &amp; Info' => 'وضعیت &amp; اطلاعات',
    'Server status and information.' => 'وضعیت سرور و اطلاعات',
    'Set Up A QuickPost Bookmarklet' => 'راه اندازی یک ارسال سریع',
    'Enable one-click publishing.' => 'انتشار سریع و آسان، تنها با یک کلیک!',
    'My Weblogs' => 'وبلاگ های من',
    'Important:' => 'توجه:',
    'Configure this weblog.' => 'این وبلاگ را تنظیم کنید',
    'Create a new entry' => 'ارسال نوشته جدید',
    'Create a new entry on this weblog' => 'ارسال یک نوشته جدید در این وبلاگ',
    'Sort By:' => 'مرتب سازی بر اساس:',
    'Creation Order' => 'ترتیب ساخته شدن',
    'Last Updated' => 'آخرین به روز رسانی',
    'Order:' => 'ترتیب:',
    'You currently have no blogs.' => 'شما در حال حاضر هیچ وبلاگی ندارید.',
    'Please see your system administrator for access.' => 'لطفا برای دسترسی مدیر سیستم را ببینید.',

    ## ./tmpl/cms/commenter_table.tmpl
    'Most Recent Comment' => 'آخرین نظر',
    'Only show trusted commenters' => 'نمایش نظر دهندگان قابل اعتماد',
    'Only show banned commenters' => 'نمایش نظر دهندگان محروم شده',
    'Only show neutral commenters' => 'نمایش نظر دهندگان بی طرف',
    'View this commenter\'s profile' => 'نمایش مشخصات نظردهنده',

    ## ./tmpl/cms/template_table.tmpl

    ## ./tmpl/cms/blog_actions.tmpl
    'weblog' => 'وبلاگ', # Translate - Previous (1)
    'weblogs' => 'وبلاگ ها', # Translate - Previous (1)
    'Delete selected weblogs (x)' => 'حذف وبلاگ های انتخاب شده (x)',

    ## ./tmpl/cms/system_list_blog.tmpl
    'Are you sure you want to delete this weblog' => 'آیا مطمئن هستید که می خواهید این وبلاگ را حذف کنید',
    'Below you find a list of all weblogs in the system with links to the main weblog page and individual settings pages for each.  You may also create or delete blogs from this screen.' => 'در زیر لیستی از وبلاگ های شما در سیستم، به همراه لینک هایی به صفحه اصلی و صفحه تنظیماتشان آمده است. در این صفحه همچنین می توانید وبلاگ جدیدی بسازید و یا وبلاگ های قبلی را حذف کنید.',
    'You have successfully deleted the blogs from the Movable Type system.' => 'شما با موفقیت وبلاگ (هایی) را از سیستم حذف کردید.',
    'Create New Weblog' => 'ساخت یک وبلاگ جدید',
    'No weblogs could be found.' => 'وبلاگی در سیستم شما یافت نشد.',

    ## ./tmpl/cms/footer-popup.tmpl

    ## ./tmpl/cms/search_replace.tmpl
    'You must select one or more item to replace.' => 'شما باید یک یا چند مورد را برای جایگزینی انتخاب کنید.',
    'Search Again' => 'جستجوی مجدد',
    'Search:' => 'جستجو:',
    'Replace:' => 'جایگزین:',
    'Replace Checked' => 'جایگزین کردن برای انتخاب شده ها',
    'Case Sensitive' => 'حساسیت به کوچک و بزرگی',
    'Regex Match' => 'پذیرش Regex',
    'Limited Fields' => 'فیلدهای خاص',
    'Date Range' => 'محدوده زمانی',
    'Is Junk' => 'هرزه باشد',
    'Search Fields:' => 'فیلد های جستجو',
    'Comment Text' => 'متن نظر',
    'E-mail Address' => 'آدرس ایمیل',
    'Source URL' => 'آدرس وب منبع',
    'Blog Name' => 'نام وبلاگ',
    'Text' => 'متن',
    'Output Filename' => 'نام فایل خروجی',
    'Linked Filename' => 'نام فایل لینک شده',
    'From:' => 'از:',
    'To:' => 'تا:',
    'Replaced [_1] records successfully.' => 'بازنشانی [_1] سابقه با موفقیت انجام شد.',
    'No entries were found that match the given criteria.' => 'هیچ نوشته ای منطبق با معیار های تعیین شده یافت نشد.',
    'No comments were found that match the given criteria.' => 'هیچ نظری منطبق با معیار های تعیین شده یافت نشد.',
    'No TrackBacks were found that match the given criteria.' => 'هیچ دنبالکی منطبق با معیار های تعیین شده یافت نشد.',
    'No commenters were found that match the given criteria.' => 'هیچ نظر دهنده ای منطبق با معیار های تعیین شده یافت نشد.',
    'No templates were found that match the given criteria.' => 'هیچ قالبی منطبق با معیار های تعیین شده یافت نشد.',
    'No log messages were found that match the given criteria.' => 'هیچ گزارشی منطبق با معیار های تعیین شده یافت نشد.',
    'No authors were found that match the given criteria.' => 'هیچ نویسنده ای منطبق با معیار های تعیین شده یافت نشد.',
    'Showing first [_1] results.' => 'نمایش [_1] مورد نخست.',
    'Show all matches' => 'نمایش تمام موارد یافت شده',
    '[_1] result(s) found.' => '[_1] مورد یافت شد.',

    ## ./tmpl/cms/system_info.tmpl
    'System Status and Information' => 'وضعیت و اطلاعات سیستم',
#   'This page will soon contain information about the server environment availability of required perl modules, installed plugins and other information useful for expediting debugging in technical support requests.' => '',

    ## ./tmpl/cms/entry_actions.tmpl
    'Save these entries (s)' => 'ذخیره این نوشته ها (s)',
    'Save this entry (s)' => 'ذخیره این نوشته (s)',
    'Preview this entry (v)' => 'پیش نمایش این نوشته (v)',
    'entry' => 'نوشته',
    'entries' => 'نوشته ها',
    'Delete this entry (x)' => 'حذف این نوشته (x)',
    'to rebuild' => 'بازسازی',
    'Rebuild selected entries (r)' => 'بزسازی نوشته های انتخاب شده (r)',
    'Delete selected entries (x)' => 'حذف نوشته های انتخاب شده (x)',

    ## ./tmpl/cms/bm_entry.tmpl
    'Select' => 'انتخاب',
    'You must choose a weblog in which to post the new entry.' => 'می بایست وبلاگی را برای نوشته جدید انتخاب کنید.',
    'Select a weblog for this post:' => 'وبلاگ',
    'Send an outbound TrackBack:' => 'ارسال دنبالک:',
    'Select an entry to send an outbound TrackBack:' => 'انتخاب نوشته برای ارسال دنبالک:',
    'Accept' => 'پذيرش',
    'You do not have entry creation permission for any weblogs on this installation. Please contact your system administrator for access.' => 'شما اجازه ساختن هیچ نوشته ای در وبلاگ های این سیستم را را ندارید. لطفا برای دسترسی با مدیر سیستم تماس بگیرید.',

    ## ./tmpl/cms/cfg_archives.tmpl
    'Are you sure you want to delete this template map' => 'آیا مطمئن هستید که می خواهید این نقشه قالب را حذف کنید',
    'You must set a valid Site URL.' => 'می بایست یک آدرس وب سایت معتبر تنظیم کنید.',
    'You must set a valid Local Site Path.' => 'می بایست یک مسیر محلی معتبر تنظیم کنید.',
    'Publishing Settings' => 'تنظیمات انتشار',
    'This screen allows you to control this weblog\'s publishing paths and preferences, as well as archive mapping settings.' => 'در این صفحه می توانید مسیر ها و الویت های انتشار این وبلاگ را، از طریق تنظیمات مسیر دهی کنتل کنید.',
    'Error: Movable Type was not able to create a directory for publishing your weblog. If you create this directory yourself, assign sufficient permissions that allow Movable Type to create files within it.' => 'خطا: مووبل تایپ توانایی ایجاد پوشه برای انتشار وبلاگ شما را ندارد. خود شما باید این پوشه را ایجاد کنید، امکان دسترسی مووبل تایپ را هم بر روی آن فراهم کنید، برای اینکه بتواند در داخل آن فایل ایجاد کند.',
    'Your weblog\'s archive configuration has been saved.' => 'تنظیمات آرشیو وبلاگ شما ذخیره شد.',
    'You may need to update your templates to account for your new archive configuration.' => 'برای اینکه این تغییراتِ ساختار آرشیوها در سایت شما منعکس شود، ممکن است به تغییراتی در قالب های خود نیازمند باشید.',
    'You have successfully added a new archive-template association.' => 'شما با موفقیت یک قالب آرشیو جدید را اضافه کردید.',
    'You may need to update your \'Master Archive Index\' template to account for your new archive configuration.' => 'برای اینکه این تغییراتِ ساختار آرشیوها در سایت شما منعکس شود، ممکن است به تغییراتی در قالب \'صفحه اصلب آرشیو\' خود نیازمند باشید.',
    'The selected archive-template associations have been deleted.' => 'قالب (های) آرشیو انتخاب شده حذف شد(ند) .',
    'Advanced Archive Publishing:' => 'انتشار پیشرفته آرشیو:',
    'Publish archives to alternate root path' => 'انتشار آرشیو خارج از مسیر ریشه',
    'Select this option only if you need to publish your archives outside of your Site Root.' => 'فقط در صورتی که احتیاج به انتشار آرشیو خارج از ریشه سایت خود دارید این گزینه را انتخاب کنید.',
    'Archive URL:' => 'آدرس وب آرشیو:',
    'Enter the URL of the archives section of your website.' => 'آدرس وب بخش آرشیو وبلاگ خود را وارد کنید.',
    'Archive Root' => 'ریشه آرشیو',
    'Enter the path where your archive files will be published.' => 'مسیری بر روی سرور خود که فایل های آرشیو باید در آنجا منتشر شوند را وارد کنید. این آدرس باید یک مسیر فیزیکی روی سرور باشد نه یک URL.',
    'Publishing Preferences' => 'تنظیمات انتشار',
    'Preferred Archive Type:' => 'نوع آرشیو ارجح:',
    'No Archives' => 'هیچ آرشیوی',
    'Individual' => 'تکی',
    'Daily' => 'روزانه',
    'Weekly' => 'هفتگی',
    'Monthly' => 'ماهیانه',
    'When linking to an archived entry&#8212;for a permalink, for example&#8212;you must link to a particular archive type, even if you have chosen multiple archive types.' => 'هنگامی که سیستم می خواهد برای یک نوشته لینک دائمی درست کند باید بداند که از چه نوع آرشیوی برای این کار استفاده کند چرا که ممکن است شما از چندین نوع آرشیو استفاده کنید. ',
    'File Extension for Archive Files:' => 'پسوند فایل، برای فایل های آرشیو:',
    'Enter the archive file extension. This can take the form of \'html\', \'shtml\', \'php\', etc. Note: Do not enter the leading period (\'.\').' => 'پسوند فایل های آرشیو را وارد کنید. می توانید \'html\'، \'shtml\'، \'php\'،... قرار بدهید. توجه: نباید در ابتدای آن (\'.\') قرار دهید.',
    'Dynamic Publishing:' => 'انتشار دینامیک:',
    'Build all templates statically' => 'ساخت تمامی قالب ها به صورت استاتیک',
    'Build only Archive Templates dynamically' => 'ساخت صفحات آرشیو به صورت دینامیک',
    'Set each template\'s Build Options separately' => 'تنظیم جداگانه برای هر قالب',
    'Archive Mapping' => 'مسیر دهی آرشیو',
    'Create New Archive Mapping' => 'ساخت مسیر دهی جدید برای آرشیو',
    'Archive Type:' => 'نوع آرشیو:',
    'INDIVIDUAL_ADV' => 'تکی',
    'DAILY_ADV' => 'روزانه',
    'WEEKLY_ADV' => 'هفتگی',
    'MONTHLY_ADV' => 'ماهیانه',
    'CATEGORY_ADV' => 'دسته ای',
    'Template' => 'قالب',
    'Archive Types' => 'انواع آرشیو',
    'Archive File Path' => 'مسیر فایل آرشیو',
    'Preferred' => 'ارجح',
    'Custom...' => 'دلخواه...',
    'archive map' => 'مسیر آرشیو',
    'archive maps' => 'مسیر های آرشیو',

    ## ./tmpl/cms/upload.tmpl
    'To upload a file to your server, click on the browse button to locate the file on your hard drive.' => 'برای ارسال یک فایل به سرور، کافی است دکمه Browse زیر را فشار داده و محل فایل روی کامپیوتر خودتان را تعیین کنید.',
    'File:' => 'فایل:',
    'Set Upload Path' => 'تنظیم مسیر آپلود',
    '(Optional)' => '(اختیاری)',
    'Path:' => 'مسير:',
    'Upload' => 'ارسال',

    ## ./tmpl/cms/footer.tmpl

    ## ./tmpl/cms/edit_categories.tmpl
    'Your category changes and additions have been made.' => 'تغییرات شما ذخیره شد.',
    'You have successfully deleted the selected categories.' => 'دسته مورد نظر با موفقیت حذف شد.',
    'Create new top level category' => 'ساخت یک دسته اصلی جدید',
    'Create Category' => 'یک دسته اصلی جدید بساز',
    'Collapse' => 'بسته',
    'Expand' => 'باز',
    'Create Subcategory' => 'یک دسته جدید زیر این دسته بساز',
    'Move Category' => 'جابجایی این دسته',
    'Move' => 'جابجایی',
    '[quant,_1,TrackBack]' => '[_1] دنبالک',
    'categories' => 'دسته ها',
    'Delete selected categories (x)' => 'حذف دسته های انتخاب شده (x)',

    ## ./tmpl/cms/edit_placements.tmpl
    'The secondary categories for this entry have been updated. You will need to SAVE the entry for these changes to be reflected on your public site.' => 'دسته های ثانویه این نوشته تغییر کرده است اما شما باید این نوشته را ذخیره کنید تا این تغییرات در سایت شما هم منعکس شود.',
    'Categories in your weblog:' => 'دسته های وبلاگ شما:',
    'Secondary categories:' => 'دسته های ثانویه این نوشته: ',
    'Assign &gt;&gt;' => 'تخصیح &lt;&lt;',
    '&lt;&lt; Remove' => 'حذف &gt;&gt;',

    ## ./tmpl/cms/rebuild-stub.tmpl

    ## ./tmpl/wizard/mt-config.tmpl

    ## ./tmpl/wizard/packages.tmpl
    'Step 1 of 3' => 'مرحله 1 از 3',
    'Requirements Check' => 'بررسى شرايط لازم',
#   'One of the following Perl modules are required in order to make a database connection.  Movable Type requires a database in order to store your weblog data.  Please install one of the packages listed here in order to proceed.  When you are ready, click the \'Retry\' button.' => '',
    'Missing Database Packages' => 'فقدان بسته های پایگاه داده',
#   'The following optional, feature-enhancing Perl modules could not be found. You may install them now and click \'Retry\' or simply continue without them.  They can be installed at any time if needed.' => '',
    'Missing Optional Packages' => 'فقدان بسته های اختیاری',
#   'The following Perl modules are required for Movable Type to run properly. Once you have met these requirements, click the \'Retry\' button to re-test for these packages.' => '',
    'Missing Required Packages' => 'فقدان بسته های مورد نیاز',
    'Minimal version requirement:' => 'حداقل نسخه مورد نیاز:',
#   'Your server has all of the required modules installed; you do not need to perform any additional module installations.' => '',
    'Back' => 'بازگشت',
    'Retry' => 'مجددا',

    ## ./tmpl/wizard/optional.tmpl
    'Step 3 of 3' => 'مرحله 3 از 3',
    'Mail Configuration' => 'تنظیمات ایمیل',
    'Your mail configuration is complete. To finish with the configuration wizard, press \'Continue\' below.' => 'تنظیمات ایمیل شما کامل شده. برای پایان پیکریندی معجزه گر، \'ادامه\' را در زیر بفشارید.',
    'You can configure you mail settings from here, or you can complete the configuration wizard by clicking \'Continue\'.' => 'از این قسمت می توانید تنظیمات ایمیل را پیکربندی نماید، یا با کلیک بر روی \'ادامه\' تنظیمات معجزه گر را کامل نمایید.',
    'An error occurred while attempting to send mail: ' => 'در هنگام مبادرت به ارسال ایمیل خطایی رخ داده:',
    'MailTransfer' => 'انتقال ایمیل',
    'Select One...' => 'انتخاب کنید...',
    'SendMailPath' => 'مسیر ارسال ایمیل',
    'The physical file path for your sendmail.' => 'مسیر فیزیکی برای سند میل',
    'SMTP Server' => 'سرور اس ام تی پی',
    'Address of your SMTP Server' => 'آدرس سرور اس ام تی پی',
    'Mail address for test sending' => 'آدرس ایمیل برای ارسال آزمایشی',
    'Send Test Email' => 'ارسال ایمیل آزمایشی',

    ## ./tmpl/wizard/complete.tmpl
    'Congratulations! You\'ve successfully configured [_1] [_2].' => 'تبریک! [_1] [_2] با موفقیت تنظیم شد.',
    'This is a copy of your configuration settings.' => 'این یک کپی از پیکربندی تنظیمات شما می باشد.',
#   'We were unable to create your configuration file. If you would like to check the directory permissions and retry, click the \'Retry\' button.' => '',
    'Install' => 'نصب',

    ## ./tmpl/wizard/header.tmpl
    'Movable Type' => 'مووبل تایپ',
    'Movable Type Configuration Wizard' => 'معجزه گر تنظیمات مووبل تایپ',

    ## ./tmpl/wizard/start.tmpl
#   'Movable Type requires that you enable JavaScript in your browser. Please enable it and refresh this page to proceed.' => '',
    'Your Movable Type configuration file already exists. The Wizard cannot continue with this file present.' => 'فایل پیکربندی مووبل تایپ موجود است. معجزه گر نمی تواند با فایل حاضر ادامه دهد.',
    'This wizard will help you configure the basic settings needed to run Movable Type.' => 'این معجزه گر به شما در تنظیمات پایه لازم برای اجرای مووبل تایپ راهنمایی می نماید.',
    'Static Web Path' => 'مسیر وب استاتيک',
#   'Due to your server\'s configuration it is not accessible in its current location and must be moved to a web-accessible location (e.g. into your web document root directory).' => '',
    'This directory has either been renamed or moved to a location outside of the Movable Type directory.' => 'این پوشه تغییر نام یا به محلی خارج از پوشه مووبل تایپ انتقال یافته.',
#   'Please specify the web-accessible URL to this directory below.' => '',
    'Static web path URL' => 'آدرس مسیر وب استاتیک',
#   'This can be in the form of http://example.com/mt-static/ or simply /mt-static' => '',
    'Begin' => 'پیش از',

    ## ./tmpl/wizard/configure.tmpl
    'You must set your Database Path.' => 'می بایست مسیر پایگاه داده را تنظیم کنید.',
    'You must set your Database Name.' => 'می بایست نام پایگاه داده را تنظیم کنید.',
    'You must set your Username.' => 'می بایست نام کاربری را تنظیم کنید.',
    'You must set your Database Server.' => 'می بایست سرور پایگاه داده را تنظیم کنید.',
    'Step 2 of 3' => 'مرحله 2 از 3',
    'Database Configuration' => 'تنظیمات پایگاه داده',
#   'Your database configuration is complete. Click \'Continue\' below to configure your mail settings.' => '',
#   'Please enter the parameters necessary for connecting to your database.If your database type is not listed in the dropdown below, you may be missing the Perl module necessary to connect to your database.  If this is the case, please check your installation and click <a href=' => '',
#   'An error occurred while attempting to connect to the database: ' => '',
    'Database' => 'پایگاه داده',
    'Database Path' => 'مسیر پایگاه داده',
    'The physical file path for your BerkeleyDB or SQLite database. ' => 'مسیر فایل فیزیکی برای پایگاه داده BerkeleyDB یا SQLite شما.',
#   'A default location of \'./db\' will store the database file(s) underneath your Movable Type directory.' => '',
    'Database Name' => 'نام پایگاه داده',
    'The name of your SQL database (this database must already exist).' => 'نام پایگاه داده SQL شما (این پایگاه باید قبلا وجود داشته باشد)',
    'The username to login to your SQL database.' => 'نام کاربری ورود به پایگاه داده SQL شما.',
    'The password to login to your SQL database.' => 'کلمه عبور ورود به پایگاه داده SQL شما.',
    'Database Server' => 'سرور پایگاه داده',
    'This is usually \'localhost\'.' => 'این معمولا \'localhost\' است.',
    'Database Port' => 'پورت پایگاه داده',
    'This can usually be left blank.' => 'این معمولا خالی است.',
    'Database Socket' => 'اتصال پایگاه داده',
    'Test Connection' => 'آزمایش اتصال',

    ## ./tmpl/wizard/footer.tmpl

    ## ./tmpl/feeds/feed_chrome.tmpl

    ## ./tmpl/feeds/feed_comment.tmpl
    'system' => 'سیستم',
    'Blog' => 'وبلاگ',
    'Untitled' => 'بدون عنوان',
    'Edit' => 'ویرایش',
    'Unpublish' => 'منتشر نشده',
    'More like this' => 'بیشتر اینطور',
    'From this blog' => 'از این وبلاگ',
    'On this entry' => 'در این نوشته',
    'By commenter identity' => 'بر حسب هویت نظر دهنده',
    'By commenter name' => 'بر حسب نام نظر دهنده',
    'By commenter email' => 'بر حسب ایمیل نظر دهنده',
    'By commenter URL' => 'بر حسب آدرس وب نظر ردهنده',
    'On this day' => 'در این روز',

    ## ./tmpl/feeds/error.tmpl
    'Movable Type Activity Log' => 'گزارش فعالیت مووبل تایپ',
    'Movable Type System Activity' => 'سیستم فعالیت مووبل تایپ',

    ## ./tmpl/feeds/feed_entry.tmpl
    'From this author' => 'از این نویسنده',

    ## ./tmpl/feeds/login.tmpl
#   'This link is invalid. Please resubscribe to your activity feed.' => '',

    ## ./tmpl/feeds/feed_ping.tmpl
    'Source blog' => 'وبلاگ منبع',
    'By source blog' => 'بر حسب وبلاگ منبع',
    'By source title' => 'بر حسب عنوان',
    'By source URL' => 'بر حسب آدرس وب منبع',

    ## ./tmpl/feeds/feed_system.tmpl

    ## ./tmpl/email/recover-password.tmpl

    ## ./tmpl/email/new-comment.tmpl
    'An unapproved comment has been posted on your blog [_1], for entry #[_2] ([_3]). You need to approve this comment before it will appear on your site.' => 'نظر جدیدی در وبلاگ «[_1]» برای نوشته ی #[_2] ([_3]) ارسال شده است و منتظر تایید شما برای انتشار است.',
    'Approve this comment:' => 'تایید این نظر:',
    'A new comment has been posted on your blog [_1], on entry #[_2] ([_3]).' => 'در وبلاگ «[_1]»،  نظر جدیدی برای نوشته ی #[_2] ([_3]) ارسال شده است.',
    'View this comment:' => 'مشاهده این نظر:',
    'Comments:' => 'نظرات:',

    ## ./tmpl/email/notify-entry.tmpl
    '[_1] Update: [_2]' => 'بروز رسانی [_1]: [_2]',

    ## ./tmpl/email/verify-subscribe.tmpl
#   'Thanks for subscribing to notifications about updates to [_1]. Follow the link below to confirm your subscription:' => '',
#   'If the link is not clickable, just copy and paste it into your browser.' => '',

    ## ./tmpl/email/new-ping.tmpl
#   'An unapproved TrackBack has been posted on your blog [_1], for entry #[_2] ([_3]). You need to approve this TrackBack before it will appear on your site.' => '',
#   'An unapproved TrackBack has been posted on your blog [_1], for category #[_2], ([_3]). You need to approve this TrackBack before it will appear on your site.' => '',
    'Approve this TrackBack:' => 'تایید این دنبالک:',
    'A new TrackBack has been posted on your blog [_1], on entry #[_2] ([_3]).' => 'دنبالک جدیدی بر روی وبلاگ [_1]، به نوشته شماره [_2] ([_3]) ارسال شده.',
    'A new TrackBack has been posted on your blog [_1], on category #[_2] ([_3]).' => 'دنبالک جدیدی بر روی وبلاگ [_1]، به دسته شماره [_2] ([_3]) ارسال شده.',
    'View this TrackBack:' => 'نمایش این دنبالک:',

    ## ./tmpl/email/footer-email.tmpl
    'Powered by Movable Type' => 'با نیروی مووبل تایپ', # Translate - Previous (4)

    ## ./t/driver-tests.pl

    ## ./t/blog-common.pl

    ## ./t/test-common.pl

    ## ./t/test.tmpl

    ## ./t/plugins/testplug.pl

    ## Other phrases, with English translations.
    'Bad ObjectDriver config' => 'تنظیم ObjectDriver صحیح نیست', # Translate - New (3)
    'Two plugins are in conflict' => 'دو پلاگین ناسازگار هستند', # Translate - New (5)
    '_BLOG_CONFIG_MODE_DETAIL' => 'مد تفصيلى',
    'Updating category placements...' => 'به روز رسانی قرار گیری دسته...', # Translate - New (3)
    'The previous post in this blog was <a href="[_1]">[_2]</a>.' => 'ارسال قبلی این وبلاگ <a href="[_1]">[_2]</a> بوده است.',
    'RSS 1.0 Index' => 'اندکس آر اس اس 1.0',
    '_USAGE_BOOKMARKLET_4' => 'پس از نصب ارسال سریع، شما از هر جایی روی وب می توانید نوشته های خود را برای سیستم بفرستید. به عنوان مثال وقتی صفحه ای را میبینید و می خواهید در مورد آن مطلبی بنویسید کافیست بر روی «ارسال سریع» کلیک کنید تا در یک صفحه جدید، وبلاگ خود را انتخاب کرده و بعد نوشته خود را بنویسید و در انتها برای سیستم بفرستید یا منتشر کنید.',
    'Remove Tags...' => 'حذف تگ ها',
    '_BLOG_CONFIG_MODE_BASIC' => 'مد پایه',
    'DAILY_ADV' => 'آرشیو روزانه',
    '_USAGE_PERMISSIONS_3' => 'برای ویرایش و تغییر مجوز های یک نویسنده و یا حذف آن می توانید نام او را از لیست زیر انتخاب کنید و یا ابتدا لیست کامل نویسنده ها را ببینید و بعد نام یکی را برای تغییر و یا حذف انتخاب کنید. ',
    'Tags to remove from selected entries' => 'تگ ها برای حذف از نوشته های انتخاب شده',
    '_NOTIFY_REQUIRE_CONFIRMATION' => 'یک ایمیل به [_1] ارسال شد. لطفا برای تکمیل اشتراک خود،
    از لینک موجود در ایمیل پیروی کنید. برای بررسی اینکه که آدرس
    شما موجود و به شما تعلق داشته باشد.',
    'Manage Notification List' => 'مدیریت لیست اطلاع رسانی',
    'This page contains an archive of all entries posted to [_1] in the <strong>[_2]</strong> category.  They are listed from oldest to newest.' => 'این صفحه حاوی آرشیوی از تمام نوشته هایی که به دسته <strong>[_2]</strong> ارسال شده می باشد. نوشته ها بر حسب قدیمی تر به جدید تر فهرست شده است.',
    'Individual' => 'تکی',
#   'An error occurred while testing for the new tag name.' => '', # Translate - New (10)
    'Updating blog old archive link status...' => 'به روز رسانی لینک قدیمی آرشیو وبلاگ...', # Translate - New (6)
    '_USAGE_COMMENTS_LIST_ALL_WEBLOGS' => 'در اینجا لیست نظرات تمام وبلاگ ها موجود است شما می توانید هر کدام را فیلتر، مدیریت و ویرایش نمایید.',
    '_USAGE_FORGOT_PASSWORD_2' => 'می توانید با استفاده از این کلمه عبور جدید وارد سیستم شوید. اما فراموش نکنید پس از ورود به سیستم آن را به کلمه عبور مورد علاقه خود تغییر دهید.',
    'To enable comment registration, you need to add a TypeKey token in your weblog config or author profile.' => 'برای فعال کردن ثبت نام نظرات، به افزودن رمز TypeKey در وبلاگ تان یا پروفایل نویسنده نیاز دارید.', # Translate - New (18)
    '_USAGE_COMMENT' => 'نظرات انتخاب شده را ویرایش کنید. در هنگام پایان ذخیره را فشار دهید. برای اعمال تغییرات به بازسازی نیاز دارید.',
    '_SEARCH_SIDEBAR' => 'جستجو',
    '_SYSTEM_TEMPLATE_DYNAMIC_ERROR' => 'زمانی که خطایی در نمایش صفحات یک وبلاگ دینامیک رخ دهد نمایش داده می شود.',
#   'An error occurred processing [_1]. Check <a href="http://www.feedvalidator.org/check.cgi?url=[_2]">here</a> for more detail and please try again.' => '',
    'View image' => 'نمایش تصویر', # Translate - New (2)
    'Date-Based Archive' => 'آرشیو تاریخ دار',
    'Unban Commenter(s)' => 'محرومیت نظردهندگان انتخاب شده لغو شود', 
    'Individual Entry Archive' => 'آرشیو تکی نوشته',
    'Daily' => 'روزانه',
    'Setting blog basename limits...' => 'تنظیم محدودیت های نام پایه وبلاگ...', # Translate - New (4)
    'Assigning visible status for comments...' => 'تعیین وضعیت رویت برای نظرات...', # Translate - New (5)
    'Unpublish Entries' => 'پیش نویس نوشته ها',
    'Powered by [_1]' => 'با نیروی [_1]', # Translate - New (3)
    'Create a feed widget' => 'ایجاد ویجت فید جدید',
    '_USAGE_UPLOAD' => 'شما می توانید فایل بالا را در شاخه اصلی سایت(Local Site Path) <a href="javascript:alert(\'[_1]\')">(?)</a>  و یا در شاخه آرشیو سایت (Local Archive Path) <a href="javascript:alert(\'[_2]\')">(?)</a> و یا حتی در هر مسیر دلخواه زیر این دو شاخه قرار دهید، برای این کار کافی است مسیر مورد نظر تان را در زیر بنویسید. (مثلا، <i>images</i>) اگر شاخه مورد نظر شما موجود نباشد، به طور اتوماتیک ایجاد می شود.',
    '<a href="[_1]">[_2]</a> is the next archive.' => 'آرشیو بعدی <a href="[_1]">[_2]</a> است.',
    'Updating commenter records...' => 'به روز رسانی سوابق نظر دهنده...', # Translate - New (3)
    'Assigning junk status for comments...' => 'تعین وضعیت ناخواسته برای نظرات...', # Translate - New (5)
    'Bad CGIPath config' => 'تنظیم CGIPath صحیح نیست', # Translate - New (3)
    'Refreshing (with <a href="?__mode=view&amp;blog_id=[_1]&amp;_type=template&amp;id=[_2]">backup</a>) template \'[_3]\'.' => 'دوباره سازی (با <a href="?__mode=view&amp;blog_id=[_1]&amp;_type=template&amp;id=[_2]">پشتيبان </a>) قالب',
    '_USAGE_REBUILD' => 'برای انعکاس تغییرات بر روی سایت عمومی خود <a href="#" onclick="doRebuild()">بازسازی</a> را مشاهده نمایید.',
#   'Missing configuration file. Maybe you forgot to move mt-config.cgi-original to mt-config.cgi?' => '', # Translate - New (13)
#   'If present, 3rd argument to add_callback must be an object of type MT::Plugin' => '', # Translate - New (15)
    'Blog Administrator' => 'مدیر وبلاگ',
    'CATEGORY_ADV' => 'آرشیو دسته ای',
#   '_WARNING_PASSWORD_RESET_MULTI' => '',
    'You must define a Comment Listing template in order to display dynamic comments.' => 'می بایست برای نمایش صحیح نظرات دینامیک قالب فهرست نظرات را تعیین نمایید.', # Translate - New (13)
    'Dynamic Site Bootstrapper' => 'راه انداز دینامیک سایت',
    'Assigning entry basenames for old entries...' => 'تعیین نام پایه برای نوشته های قدیمی...', # Translate - New (6)
    'Assigning blog administration permissions...' => 'تعیین دسترسی های مدیریت...', # Translate - New (4)
    '_USAGE_COMMENTS_LIST_BLOG' => 'لیست نظراتِ « [_1] ». با کلیک کردن روی متن هر نظر می توانید آن را تغییر دهید. ',
#   'Error sending mail ([_1]); please fix the problem, then try again to recover your password.' => '', # Translate - New (15)
    'Error saving entry: [_1]' => 'خطای ذخیره سازی نوشته: [_1]', # Translate - New (4)
    'Category Archive' => 'آرشیو دسته ای',
    'index' => 'اندکس', # Translate - New (1)
    'Updating user permissions for editing tags...' => 'به روز رسانی دسترسی های کاربر برای ویرایش تگ ها...', # Translate - New (6)
    'Assigning author types...' => 'تعیین نوع نویسندگان...', # Translate - New (3)
    '_USAGE_EXPORT_1' => 'صدور نوشته ها از مووبل تایپ به شما این امکان را می دهد که از نوشته های وبلاگ برای خودتان <b>پشتیبان</b> تهیه کنید. این کار باعث امنیت بیشتر نوشته های شما و تضمین سالم ماندن آنها، حتی در صورت بروز مشکلات حاد برای وب سرور، می شود. قالب اطلاعات صادر شده طوری است که می توان به راحتی و بدون هیچ مشکلی آنها دوباره وارد سیستم کرد ( با استفاده از متد ورود که در بالا آمده است). علاوه بر تهیه پشتیبان با استفاده از صدور نوشته ها می توانید نوشته های مختلف خود را <b>بین وبلاگ های مختلف جا به جا کنید</b>.',
    '_SYSTEM_TEMPLATE_PINGS' => 'زمانی که می خواهید از یک صفحه مجزا برای نمایش لیست دنبالک های هر نوشته استفاده کنید به کار برده می شود. (قدیمی شده و توصیه نمی شود)',
    'Setting default blog file extension...' => 'تنظیم پسوند پیش فرض فایل وبلاگ...', # Translate - New (5)
    '<a href="[_1]">[_2]</a> is the previous category.' => 'دسته بعدی <a href="[_1]">[_2]</a> است.',
    'Entry Creation' => 'ایجاد نوشته جدید',
    'Assigning visible status for TrackBacks...' => 'تعیین وضعیت رویت برای دنبالک ها...', # Translate - New (5)
    'Atom Index' => 'اندکس اتم',
    '_USAGE_PLACEMENTS' => 'از ابزار زیر برای اختصاص این نوشته به بیش از یک دسته استفاده کنید. دسته های سمت راست دسته هایی هستند که این نوشته به آن ها اختصاص ندارد و دسته های سمت چپ دسته هایی هستند که شما آنها را به این نوشته تخصیص داده اید.',
#   'Adds template tags to allow you to search for content from Google. You will need to configure this plugin using a <a href=\'http://www.google.com/apis/\'>license key.</a>' => '',
#   'Invalid priority level [_1] at add_callback' => '', # Translate - New (7)
    'Add Tags...' => 'افزودن تگ ها...',
    'This page contains a single entry from the blog posted on <strong>[_1]</strong>.' => 'این صفحه حاوی یک نوشته از وبلاگ که در <strong>[_1]</strong> ارسال شده می باشد.',
    '_THROTTLED_COMMENT_EMAIL' => 'یکی از بازدیدکنندگان وبلاگ «[_1]» شما به دلیل ارسال بیش از حد نظر در [_2] ثانیه پیش، به طور اتوماتیک از نظردادن محروم شد و IP وی به لیست IP های محروم شده اضافه شد. این کار برای حفاظت وبلاگ شما در برابر برنامه های خرابکارانه ای که سعی دارند وبلاگ دیگران را مملو از نظرات بی ارزش کنند، انجام شده است. آدرس IP محروم شده در زیر آمده است:    [_3]اگر این اتفاق سهوا افتاده است، می توانید محرومیت وی را لغو کنید. برای این  کار به بخش محرومیت IP در صفحه تنظیمات وبلاگ خود بروید و IPی [_4] را از آن لیست حذف کنید.',
    'Search Template' => 'قالب جستجو', # Translate - New (2)
    'MONTHLY_ADV' => 'آرشیو ماهیانه',
#   'Sending mail via SMTP requires that your server have Mail::Sendmail installed: [_1]' => '', # Translate - New (13)
#   'It can be included onto your published blog using <a href="[_1]">WidgetManager</a> or this MTInclude tag' => '',
    'Manage Tags' => 'مديريت تگ ها',
    '_SYSTEM_TEMPLATE_COMMENT_PREVIEW' => 'برای پیش نمایش نظرات بازدیدکنندگان به کار برده می شود.',
    'Download file' => 'دریافت فایل', # Translate - New (2)
    '_USAGE_BOOKMARKLET_3' => 'برای نصب «ارسال سریع» مووبل تایپ، لینک زیر را به روی منوی مرورگر یا روی میله ابزار Favorites آن بکشید و روی آن رها کنید :',
#   '_USAGE_PASSWORD_RESET' => '',
#   'File with name \'[_1]\' already exists. (Install File::Temp if you\'d like to be able to overwrite existing uploaded files.)' => '', # Translate - New (21)
    'DBI and DBD::SQLite2 are required if you want to use the SQLite2 database backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده SQLite2 استفاده کنید به ماژول های DBI و DBD::SQLite2 نیاز خواهید داشت',
#   'You do not have a valid path to sendmail on your machine. Perhaps you should try using SMTP?' => '', # Translate - New (18)
    'Error loading default templates.' => 'خطا در فراخوانی قالب پیش فرض.',
#   '4th argument to add_callback must be a CODE reference.' => '', # Translate - New (10)
    '_USAGE_LIST_POWER' => 'در زیر لیست نوشته های شما در«[_1]» در حالت ویرایش دسته ای آمده است. در فرم زیر می توانید هر کدام از مقادیر نمایش داده شده را تغییر دهید  و پس از انجام تغییرات دلخواه دکمه ذخیره را فشار دهید.گزینه های  فیلتر و  صفحه بندی هم مانند حالت عادی کار می کنند که با آن آشنایی دارید..',
    'Or return to the <a href="[_1]">Main Menu</a> or <a href="[_2]">System Overview</a>.' => 'یا بازگشت به <a href="[_1]">منوی اصلی</a> یا <a href="[_2]">مدیریت سیستم</a>.',
    '_ERROR_CONFIG_FILE' => 'فایل تنظیمات مووبل تایپ شما پیدا نشد و یا به درستی قابل خواندن نیست. لطفا برای اطلاعات بیشتر به قسمت «نصب و راه اندازی» راهنمای مووبل تایپ مراجعه کنید.',
#   '_WARNING_PASSWORD_RESET_SINGLE' => '', # Translate - Previous (5)
    '_USAGE_PING_LIST_BLOG' => 'لیست دنبالک های رسیده به [_1]',
#   'StyleCatcher lets you easily browse through styles and then apply them to your blog in just a few clicks. To find out more about Movable Type styles, or for new sources for styles, visit the <a href=\'http://www.sixapart.com/movabletype/styles\'>Movable Type styles</a> page.' => '',
    'Monthly' => 'ماهیانه',
    'Refreshing template \'[_1]\'.' => 'دوباره سازى قالب \'[_1]\'.',
#   'If your import file is located on your computer, you can upload it here.  Otherwise, Movable Type will automatically look in the <code>import</code> folder of your Movable Type directory.' => '',
    'Tags to add to selected entries' => 'تگ ها برای افزودن به نوشته های انتخاب شده',
    'Ban Commenter(s)' => 'نظردهندگان انتخاب شده محروم شوند',   
    '_USAGE_VIEW_LOG' => 'برای توضیحات کامل تر <a href="[_1]">گزارش فعالیت سیستم</a> را ببینید.',
#   'You must define an Individual template in order to display dynamic comments.' => '', # Translate - New (12)
    '_USAGE_BOOKMARKLET_1' => 'با نصب «ارسال سریع» می توانید بدون نیاز به ورود به سیستم و تنها با یک کلیک از هر صفحه که خواستید مطالب خود را منتشر کنید.',
#   '_USAGE_ARCHIVING_3' => '',
#   '_SYSTEM_TEMPLATE_SEARCH_TEMPLATE' => '',
    'UTC+10' => 'UTC+10', # Translate - Previous (2)
    'INDIVIDUAL_ADV' => 'تکی',
#   'Skipping template \'[_1]\' since it appears to be a custom template.' => '',
#   'The above settings have been written to the file <tt>[_1]</tt>. If any of these settings are incorrect, you may click the \'Back\' button below to reconfigure them.' => '',
#   'You used an \'[_1]\' tag outside of the context of a comment; perhaps you mistakenly placed it outside of an \'MTComments\' container?' => '', # Translate - New (22)
    '_ERROR_CGI_PATH' => 'تنظیمات مربوط به CGI Path شما یا در فایل تنظیمات مووبل تایپ وجود ندارد و یا اشتباه وارد شده است.  لطفا برای اطلاعات بیشتر به قسمت «نصب و راه اندازی» راهنمای مووبل تایپ مراجعه کنید.',
    'Assigning template build dynamic settings...' => 'تعیین قالب ساختن تنظیمات دینامیک...', # Translate - New (5)
    '_SYSTEM_TEMPLATE_COMMENTS' => 'زمانی که می خواهید از یک صفحه مجزا برای نمایش لیست نظرات هر نوشته استفاده کنید به کار برده می شود. (قدیمی شده و توصیه نمی شود)',
    '_USAGE_CATEGORIES' => 'از دسته ها می توانید برای دسته بندی و طبقه بندی نوشته های خود استفاده کنید با این کار آرشیو کردن، نمایش و حتی مراجعه به آن در آینده راحتتر،سریعتر و بهتر انجام خواهد شد. یک نوشته را در هنگام ایجاد و یا ویرایش مجدد می توان به یک (و یا چند) دسته تخصیص داد . <br /> برای تغییر نام یک دسته موجود به راحتی نام آنرا تغییر داده و بعد دکمه ذخیره را فشار دهید.',
    'Updating author web services passwords...' => 'به روزرسانی کلمه عبور سرویس های وب نویسنده...', # Translate - New (5)
    'You used an [_1] tag outside of a Daily, Weekly, or Monthly context.' => 'شما از تگ [_1] خارج از زمینه روزانه، هفتگی، یا ماهانه استفاده نموده اید.', # Translate - New (13)
    'Master Archive Index' => 'اندکس اصلی آرشیو',
    'Weekly' => 'هفتگی',
    'Unpublish TrackBack(s)' => 'عدم انتشار دنبالک های انتخاب شده', 
    'Many more can be found on the <a href="[_1]">main index page</a> or by looking through <a href="[_2]">the archives</a>.' => 'در <a href="[_1]">صفحه اصلی</a> و یا با دیدن <a href="[_2]">آرشیو</a> می توانید موارد خیلی بیشتری پیدا کنید.',
#   '_USAGE_PREFS' => '',
#   'You used an \'[_1]\' tag outside of the context of an entry; perhaps you mistakenly placed it outside of an \'MTEntries\' container?' => '', # Translate - New (22)
    'WEEKLY_ADV' => 'هفتگی',
    'Processing templates for weblog \'[_1]\'' => 'پردازش قالب ها براای وبلاگ \'[_1]\'',
    '_SYSTEM_TEMPLATE_COMMENT_PENDING' => 'وقتی نظری برای تایید مدیر نگهداشته شده و منتشر نمی شود، این پیغام برای نظر دهنده نمایش داده می شود.',
    'Unpublish Comment(s)' => 'عدم انتشار نظرات انتخاب شده',
    'The next post in this blog is <a href="[_1]">[_2]</a>.' => 'ارسال بعدی این وبلاگ <a href="[_1]">[_2]</a> است.',
    'If you have a TypeKey identity, you can ' => 'اگر دارای هویت TypeKey می باشید، می توانید ',
    '_USAGE_ENTRY_LIST_OVERVIEW' => 'لیستی از تمامی نوشته های موجود در سیستم.',
#   'Invalid date format \'[_1]\'; must be \'MM/DD/YYYY HH:MM:SS AM|PM\' (AM|PM is optional)' => '', # Translate - New (16)
#   'Please enter the parameters necessary for connecting to your database.If your database type is not listed in the dropdown below, you may be missing the Perl module necessary to connect to your database.  If this is the case, please check your installation and click <a href="?__mode=configure">here</a> to re-test your installation.' => '',
    'Drag and drop the widgets you want into the <strong>Installed</strong> column.' => 'Drag and drop the widgets you want into the <strong>Installed</strong> column.',
    'Manage Categories' => 'مدیریت دسته ها',
#   '_USAGE_ARCHIVING_2' => '',
    'UTC+11' => 'UTC+11', # Translate - Previous (2)
    'View Activity Log For This Weblog' => 'مشاهده گزارش فعالیت وبلاگ',
    'Migrating any "tag" categories to new tags...' => 'انتقال هر دسته "تگ" به تگ های جدید...', # Translate - New (7)
    'Refresh Template(s)' => 'دوباره سازى قالب(ها)',
    'Assigning basename for categories...' => 'تعیین نام پایه برای دسته ها...', # Translate - New (4)
#   '_USAGE_NOTIFICATIONS' => '',
#   'Updating [_1] records...' => '', # Translate - New (3)
#   'File with name \'[_1]\' already exists; Tried to write to tempfile, but open failed: [_2]' => '', # Translate - New (15)
    '_USAGE_COMMENTERS_LIST' => 'لیست نظردهندگانِ [_1].',
    '_ERROR_DATABASE_CONNECTION' => 'تنظیمات مربوط به پایگاه داده شما یا در فایل تنظیمات مووبل تایپ وجود ندارد و یا اشتباه وارد شده است.  لطفا برای اطلاعات بیشتر به قسمت «نصب و راه اندازی» راهنمای مووبل تایپ مراجعه کنید.',
#   '_USAGE_BANLIST' => '',
    'RSS 2.0 Index' => 'اندکس آر اس اس 2.0',
#   '_USAGE_FEEDBACK_PREFS' => '',
    '_USAGE_AUTHORS' => 'این لیست اسامی تمام نویسندگان موجود است . شما می توانید مجوز های هر یک از نویسندگان سایت خود را با کلیک کردن بر روی نام او تغییر دهید. برای حذف دائم یک نویسنده، چک باکس روبروی نام او را تیک زده و سپس دکمه حذف را فشار دهید.<br /><b>توجه :</b> اگر می خواهید یکی از نویسندگان سایتتان را تنها از وبلاگ خاصی حذف کنید (نه همه وبلاگ ها) با کلیک کردن بر روی اسمش تنها مجوز های او را تغییر دهید، چرا که حذف کردن یک کاربر با استفاده از دکمه حذف او را به طور کامل از سیستم حذف می کند.',
#   '_INDEX_INTRO' => '',
    'Configure Weblog' => 'تنظیم وبلاگ',
    'Select a Design using StyleCatcher' => 'انتخاب طرح با استفاده از استایل کچر',
    '<a href="[_1]">[_2]</a> is the previous archive.' => 'آرشیو قبلی <a href="[_1]">[_2]</a> می باشد.',
    '_USAGE_NEW_AUTHOR' => 'از طریق این صفحه می توانید نویسنده جدیدی را به سیستم اضافه کرده و سطح دسترسی وی را به هر یک از وبلاگ ها تنظیم نمایید.',
    'The following modules are <strong>optional</strong>. If your server does not have these modules installed, you only need to install them if you require the functionality that the module provides.' => 'این ماژول ها <strong>اختیاری</strong> هستند.این بدان معنی است که مووبل تایپ بدون وجود این ماژول ها به درستی کار می کند و تنها اگر نیاز به قابلیت های اضافه ای که هر کدام از این ماژول ها فراهم می کنند داشتید باید آنها را نصب کنید.',
    '_USAGE_FORGOT_PASSWORD_1' => 'شما درخواست بازیابی کلمه عبور خود را در مووبل تایپ داشتید. کلمه عبور شما جدید شما در زیر نمایش داده شده است:',
    '_USAGE_COMMENTS_LIST_OVERVIEW' => 'لیست تمامی نظرات موجود در سیستم در زیر آمده است.',
#   'You need to provide a password if you are going to\ncreate new authors for each author listed in your blog.\n' => '', # Translate - New (22)
    '_SYSTEM_TEMPLATE_POPUP_IMAGE' => 'برای نمایش عکس ها در یک صفحه مجزا به کار برده می شود.',  
#   '_USAGE_EXPORT_2' => '',
#   '_USAGE_PING_LIST_ALL_WEBLOGS' => '',
    'Manage my Widgets' => 'مدیریت ویجت های من',
#   'Updating blog comment email requirements...' => 'به روز رسانی ...', # Translate - New (5)
    'Assigning junk status for TrackBacks...' => 'تعیین وضعیت ناخاسته برای دنبالک ها...', # Translate - New (5)
    'Publish Entries' => 'انتشار نوشته ها',
    'No executable code' => 'کد قابل اجرا نیست', # Translate - New (3)
    '_USAGE_PING_LIST_OVERVIEW' => 'لیست دنبالک های رسیده به [_1]',
    'AUTO DETECT' => 'شناسایی خودکار',
#   '<em><strong>Please Note:</strong> The Movable Type export format is not comprehensive and is not suitable for creating full-fidelity backups. Please see the Movable Type manual for full details.</em>' => '',
    'Install <a href=\'http://greasemonkey.mozdev.org/\'>GreaseMonkey</a>' => 'نصب <a href=\'http://greasemonkey.mozdev.org/\'>GreaseMonkey</a>',
    '_USAGE_PLUGINS' => 'این لیست تمام پلاگین هایی می باشد که در حال حاضر توسط مووبل تایپ ثبت شده.',
#   '_USAGE_PERMISSIONS_2' => '',
    'Insufficient permissions for modifying templates for this weblog.' => 'دسترسی برای تغییر قالب های این وبلاگ کافی نیست.',
    'Bad ObjectDriver config: [_1] ' => 'تنظیم ObjectDriver صحیح نیست: [_1]', # Translate - New (4)
    'Untrust Commenter(s)' => 'نظردهندگان انتخاب شده غیر قابل اعتمادند', 
    '_USAGE_PROFILE' => 'شما می توانید مشخصات خود را در این قسمت تغییر دهید. اگر نام کاربر و یا کلمه عبور خود را تغییر دهید اعتبار نامه های ورودی شما به طور اتوماتیک به روز می شوند، به عبارت دیگر شما نیازی به ورود مجدد به سیستم ندارید. ',
    'Congratulations! A template module Widget named <strong>[_1]</strong> has been created which you can further <a href="[_2]">edit</a> to customize its display.' => 'تبریک! ماژول قالب وجیت با نام <strong>[_1]</strong> ساخته شد شما می توانید برای شخصی سازی نمایش مجددا <a href="[_2]">ویرایش</a> کنید.',
    'Category' => 'دسته',
    '_USAGE_ENTRYPREFS' => 'با استفاده از لیست زیر می توانید تعیین کنید که چه فیلدهایی در صفحه «نوشته جدید» و «ویرایش نوشته ها» نمایش داده شود. شما می توانید یکی از تنظیمات آماده (مانند استاندارد یا پیشرفته) را انتخاب کنید یا  با انتخاب گزینه «دلخواه» از لیست زیر، فیلد های مورد علاقه خود را انتخاب کنید.',
    'To download more plugins, check out the <a href="http://www.sixapart.com/pronet/plugins/">Six Apart Plugin Directory</a>.' => 'برای دریافت پلاگین های بیشتر، به <a href="http://www.sixapart.com/pronet/plugins/">دایرکتوری پلاگین Six Apart</a> مراجعه کنيد.',
    'Assigning custom dynamic template settings...' => 'تعیین تنظیمات سفارشی قالب دینامیک...', # Translate - New (5)
    'Updating comment status flags...' => 'به روز رسانی نشانه های وضعیت نظر...', # Translate - New (4)
    'Stylesheet' => 'استایل شیت',
    'RSD' => 'آر اس دی', # Translate - Previous (1)
#   '_USAGE_ARCHIVE_MAPS' => '',
#   'You used an \'[_1]\' tag outside of the context of a ping; perhaps you mistakenly placed it outside of an \'MTPings\' container?' => '', # Translate - New (22)
    '_THROTTLED_COMMENT' => 'برای جلوگیری از خرابکاری های بعضی از سوء استفاده گران محدودیتی زمانی برای ارسال هر نظر قرار داده ام. این بدین معنی است که بین هر دو نظر شما باید حداقل مدت زمان مشخصی فاصله باشد. پس باید کمی صبر کنید. لطفا حتما نظر خود را چند لحظه دیگر وارد کنید. از صبر و تحمل شما متشکرم.',
    'Trust Commenter(s)' => 'نظردهندگان انتخاب شده مورد اعتمادند',
    '_USAGE_SEARCH' => 'با استفاد ه از این ابزار می توانید عملیات جستجو بر روی نوشته ها و یا جستجو و جایگزینی یک کلمه، عبارت و یا حرف با کلمه، عبارت و یا حرف دیگر را به راحتی انجام دهید.<br /><b>اخطار: </b> در هنگام جایگزینی بسیار مراقب باشید چرا که راه برگشتی وجود <b>ندارد !</b><br />اگر عمل جایگزینی را روی مقدار زیادی از نوشته هایتان انجام می دهید، بهتر است قبل از انجام این کار با استفاده از ویژگی صدور (Export) یک پشتیبان از نوشته هایتان تهیه کنید.',
    'Manage Templates' => 'مدیریت قالب ها',
    '_USAGE_PERMISSIONS_1' => 'شما در حال تغییر دادن مجوز های <b>[_1]</b> هستید. در زیر لیستی از وبلاگ هایی که شما اجازه تغییر نویسنده در آنها را دارید موجود است، در هر وبلاگ می توانید با استفاده از گزینه های زیر مجوزهای دلخواه را برای [_1] صادر کنید. ',
    '_USAGE_BOOKMARKLET_2' => 'مووبل تایپ به شما اجازه می دهد تا خودتان فیلد های دلخواه تان را برای صفحه «ارسال سریع» انتخاب کنید. برای مثال ممکن است شما بخواهید که فیلد خلاصه را در صفحه ارسال سریع خود داشته باشید در حالی این فیلد در تنظیمات صفحه «نوشته جدید» شما نیست. به صورت پیش فرض پنجره «ارسال سریع» شامل یک منو برای انتخاب وبلاگ مورد نظر شما، یک منو برای انتخاب وضعیت نوشته (منتشر یا پیش نویس)، یک فیلد برای عنوان و یک قسمت برای متن نوشته است.',
    '_external_link_target' => '_blank',
    '_AUTO' => '1',
    'Creating entry category placements...' => 'ساختن قرار گیری دسته نوشته...', # Translate - New (4)
    'Add/Manage Categories' => 'مديريت دسته ها',
    'Setting new entry defaults for weblogs...' => 'تنظیم پیش فرض های جدید نوشته برای وبلاگ ها...', # Translate - New (6)
    'Posted <MTIfNonEmpty tag="EntryAuthorDisplayName">by [_1] </MTIfNonEmpty>on [_2]' => 'در [_2] <MTIfNonEmpty tag="EntryAuthorDisplayName">توسط [_1] </MTIfNonEmpty>ارسال شده',
    'Updating entry week numbers...' => 'به روز رسانی اعداد هفته نوشته...', # Translate - New (4)
    'Recover Password(s)' => 'بازيابي کلمه عبور',
    '_POWERED_BY' => 'با نیروی<br /><a href="http://www.sixapart.com/movabletype/">مووبل تایپ</a><br /><a href="http://www.movabletype.ir">مووبل تایپ فارسی</a>',
#   'Assigning comment/moderation settings...' => 'Mise en place des réglages commentaire/modération ...', # Translate - New (4)
    'This page contains all entries posted to [_1] in <strong>[_2]</strong>. They are listed from oldest to newest.' => 'این صفحه حاوی تمام نوشته هایی که به [_1] در <strong>[_2]</strong> ارسال شده می باشد. نوشته ها بر حسب قدیمی تر به جدید تر فهرست شده است.',
#   '_USAGE_ARCHIVING_1' => '',
    '<a href="[_1]">[_2]</a> is the next category.' => 'دسته قبلی <a href="[_1]">[_2]</a> می باشد.',
#   '_USAGE_PERMISSIONS_4' => '',
#   'Error creating temporary file; please check your TempDir setting in mt.cfg (currently \'[_1]\') this location should be writable.' => '', # Translate - New (19)
    '_USAGE_TAGS' => 'از تگ ها مي توانيد براي دسته بندي سريعتر و نمايش بهتر نوشته هاي وبلاگ خود استفاده کنيد. يافتن نوشته هاي قديمي که تگ گذاري شده اند بسيار ساده تر و سريع تر است.',
    '_USAGE_BOOKMARKLET_5' => 'علاوه بر این، اگر شما از Internet Explorer بر روی سیستم عامل ویندوز استفاده می کنید، می توانید «ارسال سریع» را به منوی راست کلیک ویندوز خود اضافه کنید. برای این کار روی لینک زیر کلیک کنید و در پنجره باز شده دکمه Open را بزنید، سپس تمامی صفحات را ببندید و از مرورگر خود خارج شوید و آن را دوباره اجرا کنید. حالا شما می توانید با انتخاب گزینه QuickPost از منوی راست کلیک مرورگر خود، ارسال سریع داشته باشید.',
#   '_USAGE_IMPORT' => '',
    'Main Index' => 'اندکس اصلی',
#   'Assigning category parent fields...' => '', # Translate - New (4)
    '_USAGE_ENTRY_LIST_BLOG' => 'در اینجا لیست نوشته های [_1] را مشاهده می کنید، می توانید، فیلتر، مدیریت و ویرایش کنید.',
#   'Movable Type ships with directory named <strong>mt-static</strong> which contains a number of important files such as images, javascript files and stylesheets.' => '', # Translate - New (23)
#   '<p>You must define a global theme repository where themes can be stored locally.  If a particular blog has not been configured for it\'s own theme paths, it will use these settings directly. If a blog has it\'s own theme paths, then the theme will be copied to that location when applied to that weblog. The paths defined here must physically exist and be writable by the webserver.</p>' => '',
    '_USAGE_EXPORT_3' => 'با کلیک کردن روی لینک زیر می توانید تمام نوشته های خود را به یک سرور مجاور صادر کن.',
#   'Setting blog allow pings status...' => '', # Translate - New (5)
    'Send Notifications' => 'ارسال اطلاع رسانی',
    '_SYSTEM_TEMPLATE_COMMENT_ERROR' => 'وقتی خطایی در ارسال یک نظر وجود داشته باشد نمایش داده می شود.',  
    'Edit All Entries' => 'ویرایش تمام نوشته ها',
    'Rebuild Files' => 'باز سازی فایل ها',

    ## Error messages, strings in the app code.

    ## ./mt-check.cgi.pre
    'CGI is required for all Movable Type application functionality.' => 'CGI برای عملکرد مووبل تایپ الزامی است.',
    'HTML::Template is required for all Movable Type application functionality.' => 'وجود HTML::Template برای اجرای مووبل تایپ الزامی است.',
    'Image::Size is required for file uploads (to determine the size of uploaded images in many different formats).' => 'وجود Image::Size برای ارسال فایل به سرور از طریق مووبل تایپ الزامی است (از این ماژول برای تعیین اندازه عکس های مختلف با فرمت های متنوع استفاده میشود).',
    'File::Spec is required for path manipulation across operating systems.' => 'وجود File::Spec برای ایجاد مسیر در سیستم عامل های مختلف الزامی است. ',
    'CGI::Cookie is required for cookie authentication.' => 'CGI::Cookie برای کارکرد کوکی ها در مووبل تایپ استفاده می شود و وجود آن الزامی است.',    
    'DB_File is required if you want to use the Berkeley DB/DB_File backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده Berkeley DB استفاده کنید به ماژول DB_File نیاز خواهید داشت.',
    'DBI is required if you want to use any of the SQL database drivers.' => 'اگر می خواهید از هر نوع پایگاه داده ای از نوع SQL استفاده کنید به ماژول DBI نیاز خواهید داشت.',
    'DBI and DBD::mysql are required if you want to use the MySQL database backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده MySQL استفاده کنید به ماژول های DBI و DBD::mysql نیاز خواهید داشت',
    'DBI and DBD::Pg are required if you want to use the PostgreSQL database backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده PostgreSQL استفاده کنید به ماژول های DBI و DBD::Pg نیاز خواهید داشت',
    'DBI and DBD::SQLite are required if you want to use the SQLite database backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده SQLite استفاده کنید به ماژول های DBI و DBD::SQLite نیاز خواهید داشت',
    'DBI and DBD::SQLite2 are required if you want to use the SQLite2 database backend.' => 'اگر می خواهید از سیستم مدیریت پایگاه داده SQLite2 استفاده کنید به ماژول های DBI و DBD::SQLite2 نیاز خواهید داشت',
    'HTML::Entities is needed to encode some characters, but this feature can be turned off using the NoHTMLEntities option in mt.cfg.' => 'HTML::Entities برای کار با کاراکتر های خاص است. این قابلیت را می توانید با استفاده از پارامتر NoHTMLEntities در فایل mt.cfg فعال یا غیر فعال کنید.',
    'LWP::UserAgent is optional; It is needed if you wish to use the TrackBack system, the weblogs.com ping, or the MT Recently Updated ping.' => 'ماژول LWP::UserAgent اختیاری است. تنها در صورتی که می خواهید برای سیستم های عمومی ثبت وبلاگ های به روز شده مانند weblogs.com یا MT Recently Updated دنبالک بفرستید باید این ماژول را نصب کنید.',
    'SOAP::Lite is optional; It is needed if you wish to use the MT XML-RPC server implementation.' => 'ماژول SOAP::Lite اختیاری است. تنها اگر میخواهید از امکانات MT XML-RPC بر روی سرور خود استفاده کنید، به این ماژول نیاز دارید.',
    'File::Temp is optional; It is needed if you would like to be able to overwrite existing files when you upload.' => 'ماژول File::Temp اختیاری است. اگر این ماژول نصب باشد می توانید فایلهای موجود بر روی سرور خود را با فایلهای جدید (از طریق Upload) جایگزین کنید.',
    'Image::Magick is optional; It is needed if you would like to be able to create thumbnails of uploaded images.' => 'ماژول Image::Magick اختیاری است. اگر میخواهید Thumbnail (عکس کوچک) از عکس هایی که Upload کردید بسازید باید این ماژول را نصب کنید.',
    'Storable is optional; it is required by certain MT plugins available from third parties.' => 'ماژول Storable اختیاری است. بعضی از پلاگین های مووبل تایپ از این ماژول استفاده می کنند.',
    'Crypt::DSA is optional; if it is installed, comment registration sign-ins will be accelerated.' => 'ماژول Crypt::DSA اختیاری است. اگر نصب شود پروسه ورود برای ثبت نظر با سرعت بیشتری انجام می شود.',
    'MIME::Base64 is required in order to enable comment registration.' => 'ماژول MIME::Base64 برای فعال کردن امکان ثبت نام نظر دهندگان به کار می رود.',
    'XML::Atom is required in order to use the Atom API.' => 'برای استفاده از Atom API به این ماژول نیاز است.',
    'Data Storage' => 'ماژول های ذخیره اطلاعات',
    'Required' => 'ماژول های الزامی',
    'Optional' => 'ماژول های اختیاری',

    ## ./extras/examples/plugins/mirror/lib/Mirror.pm

    ## ./extras/examples/plugins/l10nsample/lib/l10nsample.pm
    'This is localized in perl module' => 'این در ماژول پرل محلی شده',

    ## ./extras/examples/plugins/l10nsample/lib/l10nsample/L10N.pm

    ## ./extras/examples/plugins/l10nsample/lib/l10nsample/L10N/ja.pm

    ## ./extras/examples/plugins/l10nsample/lib/l10nsample/L10N/en_us.pm

    ## ./plugins/feeds-app-lite/lib/MT/Feeds/Lite.pm
    'An error occurred processing [_1]. ' => 'در پردازش [_1] خطایی رخ داده. ',

    ## ./plugins/feeds-app-lite/lib/MT/Feeds/Find.pm

    ## ./plugins/feeds-app-lite/lib/MT/Feeds/Lite/CacheMgr.pm

    ## ./plugins/feeds-app-lite/lib/MT/App/FeedsWidget.pm

    ## ./plugins/spamlookup/lib/spamlookup.pm
#   'Failed to resolve IP address for source URL [_1]' => '',
#   'Moderating: Domain IP does not match ping IP for source URL [_1]; domain IP: [_2]; ping IP: [_3]' => '',
#   'Domain IP does not match ping IP for source URL [_1]; domain IP: [_2]; ping IP: [_3]' => '',
#   'No links are present in feedback' => '',
#   'Number of links exceed junk limit ([_1])' => '',
#   'Number of links exceed moderation limit ([_1])' => '',
#   'Link was previously published (comment id [_1]).' => '',
#   'Link was previously published (TrackBack id [_1]).' => '',
#   'E-mail was previously published (comment id [_1]).' => '',
#   'Word Filter match on \'[_1]\': \'[_2]\'.' => '',
#   'Moderating for Word Filter match on \'[_1]\': \'[_2]\'.' => '',
#   'domain \'[_1]\' found on service [_2]' => '',
    '[_1] found on service [_2]' => '[_1] در سرویس [_2] یافته شد',

    ## ./plugins/spamlookup/lib/spamlookup/L10N.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/es.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/nl.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/ja.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/de.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/en_us.pm

    ## ./plugins/GoogleSearch/lib/GoogleSearch/L10N/fr.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher.pm
    'StyleCatcher must first be configured system-wide before it can be used.' => 'می بایست قبل از استفاده ابتدا استایل کچر را در کل سیستم پیکربندی نمایید.',
    'Configure plugin' => 'تنظیم پلاگین',
#   'Could not create [_1] folder - Check that your \'themes\' folder is webserver-writable.' => 'Impossible de créer le dossier [_1] - Vérifiez que votre dossier \'themes\' et en mode webserveur/écriture.',
    'Successfully applied new theme selection.' => 'زمینه انتخاب شده جدید با موفقیت اعمال شد.',

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/es.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/nl.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/ja.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/de.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/en_us.pm

    ## ./plugins/StyleCatcher/lib/StyleCatcher/L10N/fr.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/Plugin.pm
    'Can\'t find included template module \'[_1]\'' => 'توانایی یافتن ماژول قالب مارد شده \'[_1]\' نمی باشد.',

    ## ./plugins/WidgetManager/lib/WidgetManager/Util.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/App.pm
    'Loading template \'[_1]\' failed: [_2]' => 'فراخوانی قالب \'[_1]\' شکست خورد: [_2]',
    'Permission denied.' => 'غير قابل دسترسي.',
#   'Can\'t duplicate the existing \'[_1]\' Widget Manager. Please go back and enter a unique name.' => '',
    'Moving [_1] to list of installed modules' => 'انتقال [_1] به فهرست ماژول های نصب شده',
    'Error opening file \'[_1]\': [_2]' => 'خطا در باز کردن فایل \'[_1]\': [_2]',
    'First Widget Manager' => 'اولین مدیر ویجت',

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/es.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/nl.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/ja.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/de.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/en_us.pm

    ## ./plugins/WidgetManager/lib/WidgetManager/L10N/fr.pm

    ## ./mt-static/mt.js
    'You did not select any [_1] to delete.' => 'شما هیچ [_1] را برای حذف انتخاب نکرده اید.',
#   'Deleting an author is an irrevocable action which creates orphans of the author\'s entries.  If you wish to retire an author or remove their access to the system, removing all of their permissions is the recommended course of action.  Are you sure you want to delete this author' => '',
#   'Deleting an author is an irrevocable action which creates orphans of the author\'s entries.  If you wish to retire an author or remove their access to the system, removing all of their permissions is the recommended course of action.  Are you sure you want to delete the [_1] selected authors' => '[_1]',
    'Are you sure you want to delete this [_1]' => 'آیا مطمئن هستید که می خواهید این [_1] را حذف کنید',
    'Are you sure you want to delete the [_1] selected [_2]' => 'آیا مطمئن هستید که می خواهید [_1] انتخاب شده [_2] را حذف کنید',
    'to delete' => 'برای حذف',
    'You did not select any [_1] [_2].' => 'شما هیچ [_1] [_2]. انتخاب نکرده اید.',
    'You must select an action.' => 'می بایست عملیاتی را انتخاب نمایید.',
#   'to mark as junk' => '',
#   'to remove "junk" status' => '',
    'Enter email address:' => 'آدرس ایمیل را وارد نمایید:',
    'Enter URL:' => 'آدرس وب را وارد نمایید:',

    ## ./lib/MT.pm
    'Message: [_1]' => 'پیغام: [_1]',
    'Unnamed plugin' => 'پلاگین بدون نام',
#   '[_1] died with: [_2]' => '[_1] mort avec: [_2]',
    'Plugin error: [_1] [_2]' => 'خطای پلاگین: [_1] [_2]',

    ## ./lib/MT/Comment.pm
    'Load of entry \'[_1]\' failed: [_2]' => 'فراخوانی نوشته \'[_1]\' شکست خورد: [_2]',
    'Load of blog \'[_1]\' failed: [_2]' => 'فراخوانی وبلاگ \'[_1]\' شکست خورد: [_2]',

    ## ./lib/MT/Author.pm
#   'Can\'t approve/ban non-COMMENTER author' => '',
#   'The approval could not be committed: [_1]' => ': [_1]',

    ## ./lib/MT/TemplateMap.pm

    ## ./lib/MT/Bootstrap.pm
#   'Got an error: [_1]' => ': [_1]',

    ## ./lib/MT/Callback.pm

    ## ./lib/MT/Serialize.pm

    ## ./lib/MT/Permission.pm

    ## ./lib/MT/WeblogPublisher.pm
#   'Archive type \'[_1]\' is not a chosen archive type' => '',
#   'Parameter \'[_1]\' is required' => '',
#   'Building category archives, but no category provided.' => '',
#   'You did not set your Local Archive Path' => '',
#   'Building category \'[_1]\' failed: [_2]' => ': [_2]',
#   'Building entry \'[_1]\' failed: [_2]' => ': [_2]',
#   'Building date-based archive \'[_1]\' failed: [_2]' => '\'[_1]\' : [_2]',
#   'You did not set your Local Site Path' => '',
    'Template \'[_1]\' does not have an Output File.' => 'قالب \'[_1]\' فایل خروجی ندارد.',
#   'An error occurred while rebuilding to publish scheduled posts: [_1]' => ': [_1]',

    ## ./lib/MT/Session.pm

    ## ./lib/MT/Sanitize.pm

    ## ./lib/MT/TaskMgr.pm
#   'Unable to secure lock for executing system tasks. Make sure your TempDir location ([_1]) is writable.' => '',
    'Error during task \'[_1]\': [_2]' => 'خطا در اجرای امر \'[_1]\' : [_2]',
    'Scheduled Tasks Update' => 'به روز رسانی امور زمانبندی شده',
#   'The following tasks were run:' => ':',

    ## ./lib/MT/IPBanList.pm

    ## ./lib/MT/FileMgr.pm

    ## ./lib/MT/Category.pm
#   'Categories must exist within the same blog' => '',
#   'Category loop detected' => '',

    ## ./lib/MT/ErrorHandler.pm

    ## ./lib/MT/ObjectDriver.pm

    ## ./lib/MT/Object.pm
#   '4th argument to add_callback must be a perl CODE reference' => 'Le 4ème argument de add_callback doit être une référence CODE perl',

    ## ./lib/MT/Upgrade.pm
    'Invalid upgrade function: [_1].' => 'تابع ارتقاء معتبر نیست: [_1].',
    'Error loading class: [_1].' => 'خطا در فراخوانی کلاس: [_1].',
#   'Creating initial weblog and author records...' => 'Création du weblog initial et des informations auteur...',
    'Error saving record: [_1].' => 'خطای ذخیره سازی سابقه: [_1].',
    'First Weblog' => 'اولین وبلاگ',
#   'Can\'t find default template list; where is \'default-templates.pl\'? Error: [_1]' => 'Impossible de trouver la liste de modèles par défaut; où se trouve \'default-templates.pl\'? Erreur : [_1]',
#   'Creating new template: \'[_1]\'.' => 'Creation d\'un nouveau modèle: \'[_1]\'.',
#   'Mapping templates to blog archive types...' => 'Mapping des habillages vers les archives des blogs...',
#   'Upgrading table for [_1]' => 'Mise à jour des tables pour [_1]',
#   'Upgrading database from version [_1].' => 'Mise à jour de la Base de données de la version [_1].',
#   'Database has been upgraded to version [_1].' => 'La base de données a été mise à jour version [_1].',
    'Plugin \'[_1]\' upgraded successfully.' => 'پلاگین \'[_1]\' با موفقیت ارتقاء یافت.',
    'Plugin \'[_1]\' installed successfully.' => 'پلاگین \'[_1]\' با موفقیت نصب شد.',
#   'Setting your permissions to administrator.' => 'Paramétrage des permissions pour administrateur.',
#   'Creating configuration record.' => 'Création des infos de configuration.',
    'Creating template maps...' => 'ساختن الگوی قالب...',
#   'Mapping template ID [_1] to [_2] ([_3]).' => 'Lien du modèle [_1] vers [_2] ([_3]).',
#   'Mapping template ID [_1] to [_2].' => 'Lien du modèle [_1] vers [_2].',

    ## ./lib/MT/PluginData.pm

    ## ./lib/MT/Template.pm
#   'Parse error in template \'[_1]\': [_2]' => 'Erreur de parsing dans le modèle \'[_1]\' : [_2]',
#   'Build error in template \'[_1]\': [_2]' => 'Erreur de compilation dans le modèle \'[_1]\' : [_2]',
#   'You cannot use a [_1] extension for a linked file.' => 'Vous ne pouvez pas utiliser l\'extension [_1] pour un fichier joint.',
#   'Opening linked file \'[_1]\' failed: [_2]' => 'L\'ouverture du fichier lié \'[_1]\' a échoué : [_2] ',

    ## ./lib/MT/L10N.pm

    ## ./lib/MT/Image.pm
#   'Can\'t load Image::Magick: [_1]' => 'Impossible de charger Image::Magick : [_1]',
#   'Reading file \'[_1]\' failed: [_2]' => 'La lecture du fichier \'[_1]\' a échoué : [_2]',
#   'Reading image failed: [_1]' => 'Echec lors de la lecture de l\'image : [_1]',
#   'Scaling to [_1]x[_2] failed: [_3]' => 'La mise à l\'échelle vers [_1]x[_2] a échoué : [_3]',
#   'Can\'t load IPC::Run: [_1]' => 'Impossible de charger IPC::Run : [_1]',
#   'You do not have a valid path to the NetPBM tools on your machine.' => 'Votre chemin d\'accès vers les outils NetPBM n\'est pas valide sur votre machine.',

    ## ./lib/MT/ObjectTag.pm

    ## ./lib/MT/Plugin.pm

    ## ./lib/MT/Task.pm

    ## ./lib/MT/Config.pm

    ## ./lib/MT/FileInfo.pm

    ## ./lib/MT/Blocklist.pm

    ## ./lib/MT/Trackback.pm

    ## ./lib/MT/BasicSession.pm

    ## ./lib/MT/Notification.pm

    ## ./lib/MT/JunkFilter.pm
#   'Action: Junked (score below threshold)' => 'Action : Indésirable (score ci-dessous)',
#   'Action: Published (default action)' => 'Action : Publié (action par défaut)',
#   'Junk Filter [_1] died with: [_2]' => 'Filtre indésirable [_1] mort avec : [_2]',
#   'Unnamed Junk Filter' => 'Filtre indésirable sans nom',
    'Composite score: [_1]' => 'علامت مرکب: [_1]',

    ## ./lib/MT/Builder.pm
    '&lt;MT[_1]> with no &lt;/MT[_1]>' => '&lt;MT[_1]> بدون &lt;/MT[_1]> می باشد.',
    'Error in &lt;MT[_1]> tag: [_2]' => 'خطا در تگ &lt;MT[_1]>: [_2]',

    ## ./lib/MT/Request.pm

    ## ./lib/MT/BasicAuthor.pm

    ## ./lib/MT/Blog.pm

    ## ./lib/MT/DateTime.pm

    ## ./lib/MT/TBPing.pm

    ## ./lib/MT/DefaultTemplates.pm

    ## ./lib/MT/Util.pm
    'Less than 1 minute from now' => 'کمتر از 1 دقیقه دیگر',
    'Less than 1 minute ago' => 'کمتر از 1 دقیقه پیش',
    '[quant,_1,hour], [quant,_2,minute] from now' => '[_1] ساعت و [_2] دقیقه دیگر',
    '[quant,_1,hour], [quant,_2,minute] ago' => '[_1] ساعت و [_2] دقیقه پیش',
    '[quant,_1,hour] from now' => '[_1] ساعت دیگر',
    '[quant,_1,hour] ago' => '[_1] ساعت پیش',
    '[quant,_1,minute] from now' => '[_1] دقیقه دیگر',
    '[quant,_1,minute] ago' => '[_1] دقیقه پیش',
    '[quant,_1,day], [quant,_2,hour] from now' => '[_1] روز و [_2] ساعت دیگر',
    '[quant,_1,day], [quant,_2,hour] ago' => '[_1] روز و [_2] ساعت پیش',
    '[quant,_1,day] from now' => '[_1] روز دیگر',
    '[quant,_1,day] ago' => '[_1] روز پیش',
    'Invalid Archive Type setting \'[_1]\'' => 'تنظیمات نوع آرشیو \'[_1]\' معتبر نیست',

    ## ./lib/MT/Placement.pm

    ## ./lib/MT/Tag.pm
    'Tag must have a valid name' => 'تگ باید نام صحیحی داشته باشد',
    'This tag is referenced by others.' => 'این تگ توسط دیگری ارجاع شده.',

    ## ./lib/MT/Promise.pm

    ## ./lib/MT/XMLRPC.pm
#   'No WeblogsPingURL defined in mt.cfg' => 'Le WeblogsPingURL n\'est pas défini dans le fichier mt.cfg',
#   'No MTPingURL defined in mt.cfg' => 'Le MTPingURL  n\'est pas défini dans le fichier mt.cfg',
#   'HTTP error: [_1]' => 'Erreur HTTP: [_1]',
    'Ping error: [_1]' => 'خطا در ارسال دنبالک: [_1]',

    ## ./lib/MT/AtomServer.pm
#   'PreSave failed [_1]' => 'Echec PreEnregistrement [_1]',
#   'User \'[_1]\' (user #[_2]) added entry #[_3]' => 'Utilisateur \'[_1]\' (utilisateur #[_2]) a ajoutée Note #[_3]',

    ## ./lib/MT/Entry.pm
#   'Load of blog failed: [_1]' => 'Echec lors du chargement du blog : [_1]',

    ## ./lib/MT/ImportExport.pm
#   'No Stream' => 'Pas de Stream',
#   'No Blog' => 'Pas de Blog',
#   'Can\'t rewind' => 'Impossible de revenir en arrière',
#   'Can\'t open \'[_1]\': [_2]' => 'Impossible d\'ouvrir \'[_1]\' : [_2]',
#   'Can\'t open directory \'[_1]\': [_2]' => 'Impossible d\'ouvrir le dossier \'[_1]\' : [_2]',
#   'No readable files could be found in your import directory [_1].' => 'Aucun fichier lisible n\'a été trouvé dans le répertoire d\'importation [_1].',
#   'Importing entries from file \'[_1]\'' => 'Importation des notes du fichier \'[_1]\'',
#   'You need to provide a password if you are going to\n' => 'Vous devez saisir un mot de passe si vous allez sur \n',
#   'Need either ImportAs or ParentAuthor' => 'ImportAs ou ParentAuthor sont nécessaires',
#   'Creating new author (\'[_1]\')...' => 'Creation d\'un nouvel auteur (\'[_1]\')...',
#   'ok\n' => 'ok\n', # Translate - Previous (2)
#   'failed\n' => 'échoué\n',
#   'Saving author failed: [_1]' => 'Echec lors de la sauvegarde de l\'Auteur : [_1]',
#   'Assigning permissions for new author...' => 'Mise en place d\'autorisation pour un nouvel auteur...',
#   'Saving permission failed: [_1]' => 'Echec lors de la sauvegarde des Droits des Auteurs : [_1]',
#   'Creating new category (\'[_1]\')...' => 'Creation d\'une nouvelle catégorie (\'[_1]\')...',
#   'Saving category failed: [_1]' => 'Echec lors de la sauvegarde des Catégories : [_1]',
    'Invalid status value \'[_1]\'' => 'مقدار وضعیت\'[_1]\' معبر نیست',
    'Invalid allow pings value \'[_1]\'' => 'مقدار امکان ارسال دنبالک\'[_1]\' معتبر نیست',
#   'Can\'t find existing entry with timestamp \'[_1]\'... skipping comments, and moving on to next entry.\n' => 'Impossible de trouver une note existante avec la date \'[_1]\'... saut des commentaires et passage à la note suivante.\n',
#   'Importing into existing entry [_1] (\'[_2]\')\n' => 'Importation dans la note [_1] (\'[_2]\')\n',
#   'Saving entry (\'[_1]\')...' => 'Enregistrement de la note (\'[_1]\')...',
#   'ok (ID [_1])\n' => 'ok (ID [_1])\n', # Translate - Previous (4)
#   'Saving entry failed: [_1]' => 'Echec lors de la sauvegarde de la Note: [_1]',
#   'Saving placement failed: [_1]' => 'Echec lors de la sauvegarde du Placement : [_1]',
#   'Creating new comment (from \'[_1]\')...' => 'Création d\'un nouveau commentaire (de \'[_1]\')...',
#   'Saving comment failed: [_1]' => 'Echec lors de la sauvegarde du Commentaire : [_1]',
#   'Entry has no MT::Trackback object!' => 'La note n\'a pas d\'objet MT::Trackback !',
#   'Creating new ping (\'[_1]\')...' => 'Création d\'un nouveau ping (\'[_1]\')...',
#   'Saving ping failed: [_1]' => 'Echec lors de la sauvegarde du ping : [_1]',
#   'Export failed on entry \'[_1]\': [_2]' => 'Echec lors de l\'export sur la Note \'[_1]\' : [_2]',
    'Invalid date format \'[_1]\'; must be ' => 'شکل تاریخ \'[_1]\' معتبر نیست; می بایست ',

    ## ./lib/MT/Log.pm
    'Entry # [_1] not found.' => 'نوشته شماره [_1] یافته نشد.',
    'Comment # [_1] not found.' => 'نظر شماره [_1] یافته نشد.',
    'TrackBack # [_1] not found.' => 'دنبالک شمار [_1] یافته نشد.',

    ## ./lib/MT/I18N.pm

    ## ./lib/MT/Atom.pm

    ## ./lib/MT/Mail.pm
#   'Unknown MailTransfer method \'[_1]\'' => 'Méthode de transfert de mail inconnu \'[_1]\'',
#   'Sending mail via SMTP requires that your server ' => 'L\'envoi de mail via SMTP nécessite que votre serveur ',
#   'Error sending mail: [_1]' => 'Erreur lors de l\'envoi du mail : [_1]',
#   'You do not have a valid path to sendmail on your machine. ' => 'Le chemin d\'accès vers sendmail n\'est pas valide sur votre machine. ',
#   'Exec of sendmail failed: [_1]' => 'Echec lors de l\'exécution de sendmail : [_1]',

    ## ./lib/MT/ConfigMgr.pm
#   'Config directive [_1] without value at [_2] line [_3]' => 'Config directive [_1] sans valeur sur [_2] ligne [_3]',
#   'No such config variable \'[_1]\'' => 'Pas de variable de configuration de ce type \'[_1]\'',

    ## ./lib/MT/XMLRPCServer.pm
#   'Invalid timestamp format' => 'Format de date invalide',
#   'No web services password assigned.  Please see your author profile to set it.' => 'Aucun mot de passe associé au service web. Merci de vérifier votre profil Auteur pour le définir.',
#   'No blog_id' => 'Pas de blog_id',
    'Invalid blog ID \'[_1]\'' => 'آی دی وبلاگ \'[_1]\' معتبر نیست',
    'Invalid login' => 'ورود معتبر نیست',
#   'No posting privileges' => 'Pas détenteur de droits de publication',
#   'Value for \'mt_[_1]\' must be either 0 or 1 (was \'[_2]\')' => 'Valeur pour \'mt_[_1]\' doit être 1 ou 0 (était \'[_2]\')',
#   'No entry_id' => 'Pas de note_id',
    'Invalid entry ID \'[_1]\'' => 'آی دی نوشته \'[_1]\' معتبر نیست',
#   'Not privileged to edit entry' => 'Pas détenteur de droit pour modifier les notes',
#   'Not privileged to delete entry' => 'Pas détenteur de droit pour effacer des notes',
    'Entry \'[_1]\' (entry #[_2]) deleted by \'[_3]\' (user #[_4]) from xml-rpc' => 'نوشته \'[_1]\' (شماره نوشته [_2]) توسط \'[_3]\' (شماره کاربر [_4]) از xml-rpc حذف شد',
#   'Not privileged to get entry' => 'Pas détenteur de droit pour avoir une Note',
#   'Author does not have privileges' => 'L\'auteur n\'est pas détenteur de droits',
#   'Not privileged to set entry categories' => 'Pas détenteur de droit pour choisir la catégorie d\'une Note',
#   'Publish failed: [_1]' => 'Echec de la publication : [_1]',
#   'Not privileged to upload files' => 'Pas détenteur de droit pour télécharger des fichiers',
#   'No filename provided' => 'Aucun nom de fichier',
    'Invalid filename \'[_1]\'' => 'نام فایل \'[_1]\' معتبر نیست',
#   'Error making path \'[_1]\': [_2]' => 'Erreur dans le chemin \'[_1]\' : [_2]',
#   'Error writing uploaded file: [_1]' => 'Erreur écriture fichier téléchargé : [_1]',
#   'Template methods are not implemented, due to differences between the Blogger API and the Movable Type API.' => 'Les méthodes d\'habillage ne sont pas implémentée en raison d\'une différence entre l\'API Blogger et l\'API Movable Type.',

    ## ./lib/MT/App.pm
    'Error loading [_1]: [_2]' => 'خطا در فراخوانی [_1]: [_2]',
#   'Failed login attempt by unknown user \'[_1]\'' => '',
#   'Failed login attempt with incorrect password by user \'[_1]\' (ID: [_2])' => '',
    'User \'[_1]\' (ID:[_2]) logged in successfully' => 'کاربر \'[_1]\' (آی دی:[_2]) با موفقیت وارد شد',
    'Invalid login.' => 'ورود معتبر نیست.',
    'User \'[_1]\' (ID:[_2]) logged out' => 'کاربر \'[_1]\' (آی دی:[_2]) خارج شد',
    'The file you uploaded is too large.' => 'فایلی که آپلود نمودید بیش از حد بزرگ است.',
    'Unknown action [_1]' => 'فعالیت مجهول [_1]',

    ## ./lib/MT/L10N/es.pm

    ## ./lib/MT/L10N/de-iso-8859-1.pm

    ## ./lib/MT/L10N/nl.pm

    ## ./lib/MT/L10N/nl-iso-8859-1.pm

    ## ./lib/MT/L10N/es-iso-8859-1.pm

    ## ./lib/MT/L10N/ja.pm

    ## ./lib/MT/L10N/fr-iso-8859-1.pm

    ## ./lib/MT/L10N/de.pm

    ## ./lib/MT/L10N/en_us.pm

    ## ./lib/MT/L10N/fr.pm

    ## ./lib/MT/ObjectDriver/DBM.pm
#   'Your DataSource directory (\'[_1]\') does not exist.' => 'Votre dossier de données (\'[_1]\') n\'existe pas.',
#   'Your DataSource directory (\'[_1]\') is not writable.' => 'Votre dossier de données (\'[_1]\') est protégé en écriture.',
#   'Tie \'[_1]\' failed: [_2]' => 'La création du lien \'[_1]\' a échoué : [_2]',
#   'Failed to generate unique ID: [_1]' => 'Echec lors de la génération de l\'ID unique : [_1]',
#   'Unlink of \'[_1]\' failed: [_2]' => 'La suppression du lien \'[_1]\' a échoué: [_2]',

    ## ./lib/MT/ObjectDriver/DBI.pm
#   'Loading data failed with SQL error [_1]' => 'Echec du Chargement des données SQL erreur [_1]',
#   'Count [_1] failed on SQL error [_2]' => 'Echec Comptage [_1] sur erreur SQL [_2]',
#   'Prepare failed' => 'La préparation a échoué',
#   'Execute failed' => 'L\'Exécution a échoué',
#   'existence test failed on SQL error [_1]' => 'test d\'existence a échoué par une erreur SQL [_1]',
#   'Insertion test failed on SQL error [_1]' => 'Test d\'insertion a échoué par une erreur SQL [_1]',
#   'Update failed on SQL error [_1]' => 'Echec de la mise à jour. Erreur SQL [_1]',
#   'No such object.' => 'Objet inconnu.',
#   'Remove failed on SQL error [_1]' => 'Echec du retrait.  Erreur SQL [_1]',
#   'Remove-all failed on SQL error [_1]' => 'Echec du retrait généralisé. Erreur SQL [_1] ',

    ## ./lib/MT/ObjectDriver/DBI/sqlite.pm
#   'Your database file (\'[_1]\') is not writable.' => 'Votre fichier base de données (\'[_1]\') est interdit en écriture.',
#   'Your database directory (\'[_1]\') is not writable.' => 'Le répertoire de votre Base de données (\'[_1]\') est interdit en écriture.',
#   'Connection error: [_1]' => 'Erreur de connexion : [_1]',

    ## ./lib/MT/ObjectDriver/DBI/mysql.pm
#   'undefined type: [_1]' => 'Type indéfini : [_1]',

    ## ./lib/MT/ObjectDriver/DBI/postgres.pm

    ## ./lib/MT/Template/ContextHandlers.pm
#   'Can\'t find included file \'[_1]\'' => '',
#   'Error opening included file \'[_1]\': [_2]' => '',
#   'Unspecified archive template' => '',
    'Error in file template: [_1]' => 'خطا در فایل قالب: [_1]',
#   'Can\'t find template \'[_1]\'' => '',
#   'Can\'t find entry \'[_1]\'' => '',
    '[_1] [_2]' => '[_1] [_2]', # Translate - Previous (3)
#   'You used a [_1] tag without any arguments.' => '',
#   'You have an error in your \'category\' attribute: [_1]' => '',
#   'You have an error in your \'tag\' attribute: [_1]' => 'Vous avez une erreur dans votre attribut \'tag\': [_1]',
#   'No such author \'[_1]\'' => 'L\'auteur \'[_1]\' n\'existe pas',
#   'You used an \'[_1]\' tag outside of the context of an entry; ' => 'Vous utilisez un tag \'[_1]\' en dehors du contexte d\'une note; ',
#   'You used <$MTEntryFlag$> without a flag.' => 'Vous utilisez <$MTEntryFlag$> sans drapeau.',
#   'You used an [_1] tag for linking into \'[_2]\' archives, but that archive type is not published.' => 'Vous avez utilisé un [_1] tag pour créer un lien vers \'[_2]\' archives, mais le type d\'archive n\'est pas publié.',
#   'Could not create atom id for entry [_1]' => 'Impossible de créer un ID Atom pour cette note [_1]',
#   'To enable comment registration, you ' => 'Pour demander l\'enregistrement avant de pouvoir commenter, vous ',
#   '(You may use HTML tags for style)' => '(Vous dpouvez utiliser des tags HTML pour le style)',
#   'You used an [_1] tag without a date context set up.' => 'Vous utilisez un tag [_1] sans avoir configuré la date.',
#   'You used an \'[_1]\' tag outside of the context of a comment; ' => 'Vous utilisez un tag \'[_1]\' en dehors du contexte d\'un commentaire; ',
#   'You used an [_1] without a date context set up.' => 'Vous utilisez un [_1] sans avoir configurer la date.',
#   '[_1] can be used only with Daily, Weekly, or Monthly archives.' => '[_1] est valide uniquement avec des archives quotidiennes, hebdomadaires ou mensuelles.',
    'Couldn\'t get daily archive list' => 'توانایی گرفتن لیست آرشیو روزانه نیست.',
    'Couldn\'t get monthly archive list' => 'توانایی گرفتن لیست آرشیو  ماهانه نیست.',
    'Couldn\'t get weekly archive list' => 'توانایی گرفتن لیست آرشیو  هفتگی نیست.',
#   'Unknown archive type [_1] in <MTArchiveList>' => 'Type d\'archive inconnu [_1] in <MTArchiveList>',
#   'Group iterator failed.' => 'L\'itérateur de groupe a échoué',
#   'You used an [_1] tag outside of the proper context.' => 'Vous utilisez un tag [_1] en dehors de son contexte propre.',
#   'You used an [_1] tag outside of a Daily, Weekly, or Monthly ' => 'Vous utilisez un tag [_1] en dehors d\'une utilisation quotidienne, hebdomadaire ou mensuelle ',
#   'Could not determine entry' => 'La note ne peut pas être déterminée',
    'Invalid month format: must be YYYYMM' => 'فرم تاریخ معتبر نیست؛ می بایست <span dir=ltr>س‌س‌س‌س/م‌م</span> باشد.',
#   'No such category \'[_1]\'' => 'La catégorie \'[_1]\' n\'existe pas',
#   'You used <$MTCategoryDescription$> outside of the proper context.' => 'Vous avez utilisé <$MTCategoryDescription$> en dehors de son contexte.',
#   '[_1] can be used only if you have enabled Category archives.' => '[_1] peut être utilisé seulement si vous avez activé l\'archivage par Catégories.',
#   '<\$MTCategoryTrackbackLink\$> must be used in the context of a category, or with the \'category\' attribute to the tag.' => '<\$MTCategoryTrackbackLink\$> doit être utilisé dans le contexte d\'une catégorie, ou avec l\'attribut \'Catégorie\' dans le tag.',
#   'You failed to specify the label attribute for the [_1] tag.' => 'Vous n\'avez pas spécifié l\'étiquette du tag [_1].',
#   'You used an \'[_1]\' tag outside of the context of ' => 'Vous avez utilisé le tag \'[_1]\' en dehors du contexte de ',
#   'MTSubCatsRecurse used outside of MTSubCategories' => 'MTSubCatsRecurse est utilisé en dehors d\'une balise MTSubCategories',
#   'MT[_1] must be used in a category context' => 'MT[_1] doit être utilisé dans le contexte d\'une catégorie',
    'Cannot find package [_1]: [_2]' => 'توانایی یافتن بسته [_1] نیست: [_2]',
    'Error sorting categories: [_1]' => 'خطا در مرتب نمودن دسته ها: [_1]',

    ## ./lib/MT/Template/Context.pm

    ## ./lib/MT/Plugin/L10N.pm

    ## ./lib/MT/Plugin/JunkFilter.pm
    'from rule' => 'از قانون',
    'from test' => 'از آزمایش',

    ## ./lib/MT/App/Viewer.pm
#   'This is an experimental feature; turn off SafeMode (in mt.cfg) in order to use it.' => 'C\'est une fonctionnalité encore à l\'essai; Désactivez le  SafeMode (dans mt.cfg) pour pouvoir l\'utiliser.',
#   'Not allowed to view blog [_1]' => 'Non autorisé à voir ce blog [_1]',
    'Loading blog with ID [_1] failed' => 'فراخوانی وبلاگ با آی دی [_1] شکست خورد',
#   'Can\'t load \'[_1]\' template.' => 'Impossible de charger l\'habillage \'[_1]\' .',
#   'Building template failed: [_1]' => 'Echec de la construction de l\'habillage: [_1]',
    'Invalid date spec' => 'خصوصیات تاریخ معتبر نیست',
#   'Can\'t load template [_1]' => 'Impossible de charge l\'habillage [_1]',
#   'Building archive failed: [_1]' => 'Echec de la construction des archives: [_1]',
    'Invalid entry ID [_1]' => 'آی دی نوشته [_1] معتبر نیست',
    'Entry [_1] is not published' => 'نوشته [_1] منتشر نشده است',
    'Invalid category ID \'[_1]\'' => 'آی دی دسته \'[_1]\' معتبر نیست',

    ## ./lib/MT/App/NotifyList.pm
#   'Please enter a valid email address.' => 'Veuillez entrer une adresse e-mail valide.',
#   'Missing required parameter: blog_id. Please consult the user manual to configure notifications.' => 'Il manque un paramètre requis : blog_id. Veuillez consulter le manuel d\'utilisateur pour configurer les notifications.',
#   'Email notifications have not been configured! The weblog owner needs to set the EmailVerificationSecret configuration variable in mt.cfg.' => 'L\'avis par e-mail n\'a pas été configuré ! Le webmaster de la plateforme doit mettre la variable de configuration EmailVerificationSecret dans mt.cfg.',
#   'An invalid redirect parameter was provided. The weblog owner needs to specify a path that matches with the domain of the weblog.' => 'Vous avez fourni un paramètre de redirection non valide. Le propriétaire du weblog doit spécifier le chemin qui correspond au nom de domaine du weblog.',
#   'The email address \'[_1]\' is already in the notification list for this weblog.' => 'L\'adresse e-mail \'[_1]\' fait déjà parti de la liste de notification pour ce weblog.',
#   'Please verify your email to subscribe' => 'Merci de vérifier votre email pour souscrire',
#   'The address [_1] was not subscribed.' => 'L\'adresse [_1] n\'a pas été souscrite.',
#   'The address [_1] has been unsubscribed.' => 'L\'adresse [_1] a été supprimée.',

    ## ./lib/MT/App/Search.pm
#   'You are currently performing a search. Please wait ' => 'Une recherche est actuellement en cours. Merci de patienter ',
#   'Search failed. Invalid pattern given: [_1]' => 'Echec de la recherche. Comportement non valide : [_1]',
    'Search failed: [_1]' => 'جستجو شکست خورد: [_1]',
#   'No alternate template is specified for the Template \'[_1]\'' => 'Pas d\'habillage alternatif spécifié pour l\'habillage \'[_1]\'',
#   'Opening local file \'[_1]\' failed: [_2]' => 'L\'ouverture du fichier local \'[_1]\' a échoué: [_2]',
#   'Building results failed: [_1]' => 'Echec lors de la construction des résultats: [_1]',
#   'Search: query for \'[_1]\'' => 'Recherche : requête pour \'[_1]\'',
#   'Search: new comment search' => 'Recherche : recherche de nouveaux commentaires',

    ## ./lib/MT/App/Upgrader.pm
#   'The initial account name is required.' => 'Le nom initial du compte est nécessaire.',
#   'You failed to validate your password.' => 'Echec de la validation du mot de passe.',
#   'You failed to supply a password.' => 'Vous n\'avez pas donné de mot de passe.',
#   'The value you entered was not a valid email address' => 'Vous devez saisir une adresse e-mail valide',
#   'Password recovery word/phrase is required.' => 'La phrase de récupération de mot de passe est requise.',
#   'User \'[_1]\' upgraded database to version [_2]' => 'L\'utilisateur \'[_1]\' a mis à jour la base de données avec la version [_2]',
    'Invalid session.' => 'جلسه معتبر نیست.',
#   'No permissions. Please contact your administrator for upgrading Movable Type.' => 'Pas d\'autorisation. Contactez votre administrateur système Movable Type pour changer votre statut.',

    ## ./lib/MT/App/Trackback.pm
#   'You must define a Ping template in order to display pings.' => 'Vous devez définir un modèle d\'affichage Ping pour les afficher.',
#   'Trackback pings must use HTTP POST' => 'Les Pings Trackback doivent utiliser HTTP POST',
#   'Need a TrackBack ID (tb_id).' => 'Un TrackBack ID est requis (tb_id).',
    'Invalid TrackBack ID \'[_1]\'' => 'آی دی دنبالک \'[_1]\' معتبر نیست',
#   'You are not allowed to send TrackBack pings.' => 'You n\'êtes pas autorisé à envoyer des TrackBack pings.',
#   'You are pinging trackbacks too quickly. Please try again later.' => 'Vous pinguez les trackbacks trop rapidement. Merci d\'essayer plus tard.',
#   'Need a Source URL (url).' => 'Une source URL est requise (url).',
    'Invalid URL \'[_1]\'' => 'آدرس وب \'[_1]\'معتبر نیست',
#   'This TrackBack item is disabled.' => 'Cet élément TrackBack est désactivé.',
#   'This TrackBack item is protected by a passphrase.' => 'Cet élément de TrackBack est protégé par un mot de passe.',
#   'TrackBack on "[_1]" from "[_2]".' => 'TrackBack sur "[_1]" provenant de "[_2]".',
#   'TrackBack on category \'[_1]\' (ID:[_2]).' => 'TrackBack sur la catégorie \'[_1]\' (ID:[_2]).',
#   'Rebuild failed: [_1]' => 'Echec lors de la recontruction: [_1]',
#   'Can\'t create RSS feed \'[_1]\': ' => 'Impossible de créer le flux RSS \'[_1]\': ',
#   'New TrackBack Ping to Entry [_1] ([_2])' => 'Nouveau TrackBack Ping pour la Note [_1] ([_2])',
#   'New TrackBack Ping to Category [_1] ([_2])' => 'Nouveau TrackBack Ping pour la Catégorie [_1] ([_2])',

    ## ./lib/MT/App/Comments.pm
#   'No id' => 'pas d\'id',
#   'No such comment' => 'Pas de commentaire de la sorte',
#   'IP [_1] banned because comment rate exceeded 8 comments in [_2] seconds.' => 'l\'IP [_1] a été bannie car elle emet plus de 8 commentaires en  [_2] seconds.',
#   'IP Banned Due to Excessive Comments' => 'IP bannie pour cause de commentaires excessifs',
    'Invalid request' => 'درخواست معتبر نیست',
#   'No such entry \'[_1]\'.' => 'Aucune Note \'[_1]\'.',
#   'You are not allowed to post comments.' => 'Vous n\'êtes pas autorisé à poster des commentaires.',
#   'Comments are not allowed on this entry.' => 'Les commentaires ne sont pas autorisés sur cette Note.',
#   'Comment text is required.' => 'Le texte de commentaire est requis.',
#   'Registration is required.' => 'L\'inscription est requise.',
#   'Name and email address are required.' => 'Le nom et l\'e-mail sont requis.',
    'Invalid email address \'[_1]\'' => 'آدرس ایمیل \'[_1]\' معتبر نیست',
#   'Comment save failed with [_1]' => 'La sauvegarde du commentaire a échoué [_1]',
#   'Comment on "[_1]" by [_2].' => 'Commentaire sur "[_1]" par [_2].',
#   'Commenter save failed with [_1]' => 'L\'enregistrement de l\'auteur de commentaires a échoué [_1]',
#   'New Comment Posted to \'[_1]\'' => 'Nouveau commentaire posté sur \'[_1]\'',
#   'The login could not be confirmed because of a database error ([_1])' => 'Le login ne peut pas être confirmé en raison d\'une erreur de base de données ([_1])',
#   'Couldn\'t get public key from url provided' => 'Impossible d\'avoir une clef publique',
#   'No public key could be found to validate registration.' => 'Aucune clé publique n\'a été trouvée pour valider l\'inscription.',
#   'TypeKey signature verif\'n returned [_1] in [_2] seconds verifying [_3] with [_4]' => 'La vérification de la signature Typekey retournée [_1] dans [_2] secondes en vérifiant [_3] avec [_4]',
#   'The TypeKey signature is out of date ([_1] seconds old). Ensure that your server\'s clock is correct' => 'La signature Typekey est périmée depuis ([_1] secondes). Vérifier que votre serveur a une heure correcte',
#   'The sign-in validation failed.' => 'Cette validation pour enregistrement a échoué.',
#   'This weblog requires commenters to pass an email address. If you\'d like to do so you may log in again, and give the authentication service permission to pass your email address.' => 'Les auteurs de commentaires de ce weblog doivent donner une adresse email. Si vous souhaitez le faire il faut vous enregistrer à nouveau et donner l\'autorisation au système d\'identification de récupérer votre adresse email',
#   'Couldn\'t save the session' => 'Impossible de sauvegarder la session',
#   'This weblog requires commenters to pass an email address' => 'Les auteurs de commentaires de ce weblog doivent donner une adresse email',
#   'Sign in requires a secure signature; logout requires the logout=1 parameter' => 'La procédure d\'enregistrement nécessite une signature sécurisée; la procédure de déconnexion nécessite le paramètre logout=1',
#   'The sign-in attempt was not successful; please try again.' => 'La tentative d\'enregistrement a échoué; veuillez essayer de nouveau.',
#   'The sign-in validation was not successful. Please make sure your weblog is properly configured and try again.' => 'La procédure d\'enrgistrement a échoué. Veuillez vérifier que votre weblog est configuré correctement et essayez de nouveau.',
#   'No such entry ID \'[_1]\'' => 'Aucune ID pour la Note \'[_1]\'',
#   'You must define an Individual template in order to ' => 'Vous devez définir un modèle individuel pour ',
#   'You must define a Comment Listing template in order to ' => 'Vous devez définir un modèle de liste de commentaires pour ',
#   'No entry was specified; perhaps there is a template problem?' => 'Aucune Note n\'a été spécifiée; peut-être y a-t-il un problème de modèle?',
#   'Somehow, the entry you tried to comment on does not exist' => 'Il semble que la Note que vous souhaitez commenter n\'existe pas',
    'You must define a Comment Pending template.' => 'می بایست قالب نظرات در حال انتظار را تعیین نمایید.',
    'You must define a Comment Error template.' => 'می بایست قالب خطاهای نظرخواهی را تعیین نمایید.',
    'You must define a Comment Preview template.' => 'می بایست قالب پیش نمایش نظرخواهی را تعیین نمایید.',

    ## ./lib/MT/App/Wizard.pm
    'Sendmail' => 'ارسال ایمیل',
    'Test email from Movable Type Configuration Wizard' => 'ایمیل آزمایشی از معجزه گر تنظیمات مووبل تایپ',
    'This is the test email sent by your new installation of Movable Type.' => 'این ایمیل آزمایشی است که توسط نصب جدید مووبل تایپ شما ارسال شده.',

    ## ./lib/MT/App/ActivityFeeds.pm
#   'An error occurred while generating the activity feed: [_1].' => '',
#   'No permissions.' => '',
    '[_1] Weblog TrackBacks' => '[_1] دنبالک های وبلاگ',
    'All Weblog TrackBacks' => 'تمامی دنبالک های وبلاگ',
    '[_1] Weblog Comments' => '[_1] نظرات وبلاگ',
    'All Weblog Comments' => 'تمامی نظرات وبلاگ',
    '[_1] Weblog Entries' => '[_1] نوشته های وبلاگ',
    'All Weblog Entries' => 'تمامی نوشته های وبلاگ',
    '[_1] Weblog Activity' => '[_1] فعالیت وبلاگ',
    'All Weblog Activity' => 'تمامی فعالیت های وبلاگ',
    'Movable Type Debug Activity' => 'رفع اشکال فعالیت مووبل تایپ',

    ## ./lib/MT/App/CMS.pm
#   'No permissions' => 'Aucun Droit',
    'Invalid blog' => 'وبلاگ معتبر نیست',
    'Convert Line Breaks' => 'تبدیل مجزاساز های خط',
    'Invalid author_id' => 'آی دی نویسنده معتبر نیست',
    'Invalid username \'[_1]\' in password recovery attempt' => 'نام کاربری \'[_1]\' در بازیابی کلمه عبور معتبر نیست.',
    'Username or password recovery phrase is incorrect.' => 'نام کاربری یا عبارت بازیابی کلمه عبور صحیح نیست.',
#   'Password recovery for user \'[_1]\' failed due to lack of recovery phrase specified in profile.' => 'La récupération du mot de passe par l\'utilisateur \'[_1]\' a échouée du fait de l\'absence de la phrase de récupération dans le profil.',
#   'No password recovery phrase set in user profile. Please see your system administrator for password recovery.' => 'Il n\'y a pas de phrase de récupération de mot de passe dans le profil utilisateur. Merci de contacter votre administrateur pour récupérer le mot de passe.',
#   'Invalid attempt to recover password (used recovery phrase \'[_1]\')' => 'La tentative de récupération du mot de passe a échouée (phrase de récupération du mot de passe utilisée : \'[_1]\')',
#   'Password recovery for user \'[_1]\' failed due to lack of email specified in profile.' => 'La tentative de récupération du mot de passe a échouée pour l\'utilisateur \'[_1]\' car il n\'y avait pas d\'email dans le profil.',
#   'No email specified in user profile.  Please see your system administrator for password recovery.' => 'Pas d\'adresse email précisée dans le profil utilisateur. Merci de contacter votre administrateur pour récupérer le mot de passe.',
#   'Password was reset for user \'[_1]\' (ID:[_2]) and sent to address: [_3]' => 'Mot de passe réinitialisé pour l\'utilisateur \'[_1]\' (ID:[_2]) et envoyé à l\'adresse email : [_3]',
#   'Error sending mail ([_1]); please fix the problem, then ' => 'Erreur lors de l\'envoi de l\'e-mail ([_1]); veuillez résoudre le problème puis ',
    'Invalid type' => 'نوع معتبر نیست',
#   'No such tag' => 'Pas de Tag de ce type',
#   'You are not authorized to log in to this blog.' => 'Vous n\'êtes pas autorisé à vous connecter sur ce weblog.',
#   'No such blog [_1]' => 'Aucun weblog ne porte le nom [_1]',
#   'Weblog Activity Feed' => 'Flux d\'activité du weblog',
#   '(author deleted)' => '(auteur effacé)',
#   'All Feedback' => 'Tous les retours lecteurs',
#   'log records' => 'entrées du journal',
#   'System Activity Feed' => 'Flux d\'activité du système',
#   'Activity log for blog \'[_1]\' (ID:[_2]) reset by \'[_3]\'' => 'Journal d\'activité pour le blog \'[_1]\' (ID:[_2]) réinitialisé par \'[_3]\'',
#   'Activity log reset by \'[_1]\'' => 'Journal d\'activité réinitialisé par \'[_1]\'',
    'Import/Export' => 'ورود/صدور',
    'Invalid blog id [_1].' => 'آی دی وبلاگ [_1] معتبر نیست.',
    'Invalid parameter' => 'پارامتر معتبر نیست',
    'Load failed: [_1]' => 'فراخوانی شکست خورد : [_1]',
#   '(no reason given)' => '(sans raison donnée)',
    '(untitled)' => '(بدون عنوان)',
#   'Create template requires type' => 'La création d\'habillages nécessite un type',
    'New Template' => 'قالب جدید',
    'New Weblog' => 'وبلاگ جدید',
    'Author requires username' => 'نویسنده به نام کاربری نیاز دارد',
    'Author requires password' => 'نویسنده به کلمه عبور نیاز دارد',
    'Author requires password recovery word/phrase' => 'نویسنده به کامه/عبارت بازیابی کلمه عبور نیاز دارد',
    'Email Address is required for password recovery' => 'وارد کردن آدرس Email اجباری است. این تنها راهی است که در صورت فراموشی کلمه عبورتان می توانید آن را بازیابی کنید.',
    'The e-mail address you entered is already on the Notification List for this weblog.' => 'آدرس ایمیلی که وارد کرده اید در حال حاضر در لیست اطلاع رسانی موجود است!',
#   'You did not enter an IP address to ban.' => 'Vous devez saisir une adresse IP à bannir.',
#   'The IP you entered is already banned for this weblog.' => 'L\'adresse IP que vous avez entrée a été bannie de ce weblog.',
#   'You did not specify a weblog name.' => 'Vous devez  spécifier un nom de weblog.',
#   'Site URL must be an absolute URL.' => 'L\'URL du site doit être une URL absolue.',
#   'Archive URL must be an absolute URL.' => 'Les URL d\'archive doivent être des URL absolues.',
    'The name \'[_1]\' is too long!' => 'نام \'[_1]\' بیش از حد طولانیست!',
    'Category \'[_1]\' created by \'[_2]\'' => 'دسته \'[_1]\' توسط \'[_2]\' ساخته شد',
#   'The category label \'[_1]\' conflicts with another category. Top-level categories and sub-categories with the same parent must have unique names.' => 'Le nom de catégorie \'[_1]\' est en conflit avec une autre catégorie. Les catégories et les sous-catégories doivent avoir un nom unique.',
#   'Saving permissions failed: [_1]' => 'Echec lors de la sauvegarde des Autorisations : [_1]',
#   'Can\'t find default template list; where is ' => 'Impossible de trouver la liste des modèles par défaut; où est ',
#   'Populating blog with default templates failed: [_1]' => 'L\'activation sur le blog des modèles par défaut a échoué : [_1]',
#   'Setting up mappings failed: [_1]' => 'La mise en oeuvre des mappings a échoué : [_1]',
    'Weblog \'[_1]\' (ID:[_2]) created by \'[_3]\'' => 'وبلاگ \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' ساخته شد',
    'User \'[_1]\' (ID:[_2]) created by \'[_3]\'' => 'کاربر \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' ساخته شد',
    'Template \'[_1]\' (ID:[_2]) created by \'[_3]\'' => 'قالب \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' ساخته شد',
#   'You cannot delete your own author record.' => 'Vous ne pouvez pas effacer vos propres données Auteur.',
#   'You have no permission to delete the author [_1].' => 'Vous n\'avez pas l\'autorisation d\'effacer l\'auteur [_1].',
    'Weblog \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'وبلاگ \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
#   'Subscriber \'[_1]\' (ID:[_2]) deleted from notification list by \'[_3]\'' => 'Abonné \'[_1]\' (ID:[_2]) supprimé de la liste de notifications par \'[_3]\'',
    'User \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'کاربر \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
    'Category \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'دسته \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
    'Comment (ID:[_1]) by \'[_2]\' deleted by \'[_3]\' from entry \'[_4]\'' => 'نظر (آی دی:[_1]) توسط \'[_2]\'  توسط \'[_3]\' از نوشته \'[_4]\' حذف شد',
    'Entry \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'نوشته \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
    '(Unlabeled category)' => '(دسته بدون نام)',
#   'Ping (ID:[_1]) from \'[_2]\' deleted by \'[_3]\' from category \'[_4]\'' => '',
    '(Untitled entry)' => '(نوشته بدون عنوان)',
#   'Ping (ID:[_1]) from \'[_2]\' deleted by \'[_3]\' from entry \'[_4]\'' => '',
    'Template \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'قالب \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
    'Tag \'[_1]\' (ID:[_2]) deleted by \'[_3]\'' => 'تگ \'[_1]\' (آی دی:[_2]) توسط \'[_3]\' حذف شد',
#   'Passwords do not match.' => 'Les mots de passe ne sont pas conformes.',
#   'Failed to verify current password.' => 'Erreur lors de la vérification du mot de passe.',
    'An author by that name already exists.' => 'یک نویسنده با آن نام از قبل موجود است.',
    'Save failed: [_1]' => 'ذخیره سازی شکست خورد: [_1]',
#   'Saving object failed: [_1]' => 'Echec lors de la sauvegarde de l\'objet : [_1]',
#   'No Name' => 'Pas de Nom',
#   'Notification List' => 'Liste de notifications',
    'email addresses' => 'آدرس ایمیل',
#   'Can\'t delete that way' => 'Impossible de supprimer comme cela',
#   'Your login session has expired.' => 'Votre session a expiré.',
#   'You can\'t delete that category because it has sub-categories. Move or delete the sub-categories first if you want to delete this one.' => 'Vous ne pouvez pas effacer cette catégorie car elle contient des sous-catégories. Déplacez ou supprimez d\'abord les sous-catégories pour pouvoir effacer cette catégorie.',
#   'System templates can not be deleted.' => 'Les modèles créés par le Système ne peuvent pas être supprimés.',
#   'Unknown object type [_1]' => 'Objet de type [_1] inconnu',
#   'Loading object driver [_1] failed: [_2]' => 'Echec lors du chargement du driver [_1] : [_2]',
#   'Reading \'[_1]\' failed: [_2]' => 'Echec \'[_1]\' lors de la lecture de : [_2]',
#   'Thumbnail failed: [_1]' => 'Echec de a vignette: [_1]',
#   'Error writing to \'[_1]\': [_2]' => 'Erreur \'[_1]\' lors de l\'écriture de : [_2]',
    'Invalid basename \'[_1]\'' => 'نام پایه \'[_1]\' معتبر نیست',
#   'No such commenter [_1].' => 'Pas de d\'auteur de commentaires [_1].',
#   'User \'[_1]\' trusted commenter \'[_2]\'.' => 'L\'utilisateur \'[_1]\' a accordé le statut Fiable à l\'auteur de commentaire \'[_2]\'.',
#   'User \'[_1]\' banned commenter \'[_2]\'.' => 'L\'utilisateur \'[_1]\'  a banni l\'auteur de commentaire \'[_2]\'.',
#   'User \'[_1]\' unbanned commenter \'[_2]\'.' => 'L\'utilisateur \'[_1]\'  a retiré le statu Banni à l\'auteur de commentaire \'[_2]\'.',
#   'User \'[_1]\' untrusted commenter \'[_2]\'.' => 'L\'utilisateur \'[_1]\'  a retiré le statut Fiable à l\'auteur de commentaire \'[_2]\'.',
#   'Need a status to update entries' => 'Statut nécessaire pour mettre à jour les notes',
#   'Need entries to update status' => 'Notes nécessaires pour mettre à jour le statut',
#   'One of the entries ([_1]) did not actually exist' => 'Une des notes ([_1]) n\'existait pas',
#   'Some entries failed to save' => 'Certaines notes non pas été sauvegardées correctement',
#   'You don\'t have permission to approve this TrackBack.' => 'Vous n\'avez pas l\'autorisation d\'approuver ce TrackBack.',
#   'Comment on missing entry!' => 'Commentaire su une note maquante !',
#   'You don\'t have permission to approve this comment.' => 'Vous n\'avez pas la permission d\'approuver ce commentaire.',
#   'Comment Activity Feed' => 'Flux d\'activité des commentaires',
#   'Orphaned comment' => 'Commentaire orphelin',
#   'Plugin Set: [_1]' => 'Eventail de Plugin : [_1]',
#   'TrackBack Activity Feed' => 'Flux d\'activité des TrackBacks ',
#   'No Excerpt' => 'Pas d\'extrait',
#   'No Title' => 'Pas de Titre',
#   'Orphaned TrackBack' => 'TrackBack orphelin',
    'Tag' => 'تگ', # Translate - Previous (1)
    'Entry Activity Feed' => 'فید فعالیت نوشته',
#   'Invalid date \'[_1]\'; authored on dates must be in the format YYYY-MM-DD HH:MM:SS.' => 'Date invalide \'[_1]\'; les dates doivent être au format AAAA-MM-JJ HH:MM:SS.',
#   'Invalid date \'[_1]\'; authored on dates should be real dates.' => 'Date invalide \'[_1]\'; les dates de publication doivent être réelles.',
#   'Saving entry \'[_1]\' failed: [_2]' => 'Echec \'[_1]\' lors de la sauvegarde de la Note : [_2]',
#   'Removing placement failed: [_1]' => 'Echec lors de la suppression de l\'emplacement : [_1]',
#   'No such entry.' => 'Aucune Note de ce type.',
#   'Your weblog has not been configured with a site path and URL. You cannot publish entries until these are defined.' => 'Votre weblog n\'a pas été configuré avec un chemin et une URL. Vous ne pouvez pas publier de notes avant qu\'ils ne soient définis',
#   'Entry \'[_1]\' (ID:[_2]) added by user \'[_3]\'' => 'Note \'[_1]\' (ID:[_2]) ajoutée par l\'utilisateur \'[_3]\'',
#   'The category must be given a name!' => 'Vous devez donner un nom a votre catégorie.',
#   'yyyy/mm/entry_basename' => 'س‌س‌س‌س/م‌م/نام_پایه',
#   'yyyy/mm/entry-basename' => 'س‌س‌س‌س/م‌م/نام-پایه',
#   'yyyy/mm/entry_basename/' => 'س‌س‌س‌س/م‌م/نام_پایه/',
#   'yyyy/mm/entry-basename/' => 'س‌س‌س‌س/م‌م/نام-پایه/',
#   'yyyy/mm/dd/entry_basename' => 'س‌س‌س‌س/م‌م/ر‌ر/نام_پایه',
#   'yyyy/mm/dd/entry-basename' => 'س‌س‌س‌س/م‌م/ر‌ر/نام-پایه',
#   'yyyy/mm/dd/entry_basename/' => 'س‌س‌س‌س/م‌م/ر‌ر/نام_پایه/',
#   'yyyy/mm/dd/entry-basename/' => 'س‌س‌س‌س/م‌م/ر‌ر/نام-پایه/',
#   'category/sub_category/entry_basename' => 'دسته/زیر_دسته/نام_پایه',
#   'category/sub_category/entry_basename/' => 'دسته/زیر_دسته/نام_پایه/',
#   'category/sub-category/entry_basename' => 'دسته/زیر-دسته/نام_پایه',
#   'category/sub-category/entry-basename' => 'دسته/زیر-دسته/نام-پایه',
#   'category/sub-category/entry_basename/' => 'دسته/زیر-دسته/نام_پایه/',
#   'category/sub-category/entry-basename/' => 'دسته/زیر-دسته/نام-پایه/',
#   'primary_category/entry_basename' => 'دسته_اصلی/نام_پایه',
#   'primary_category/entry_basename/' => 'دسته_اصلی/نام_پایه/',
#   'primary-category/entry_basename' => 'دسته-اصلی/نام_پایه',
#   'primary-category/entry-basename' => 'دسته-اصلی/نام-پایه',
#   'primary-category/entry_basename/' => 'دسته-اصلی/نام_پایه/',
#   'primary-category/entry-basename/' => 'دسته-اصلی/نام-پایه/',
#   'yyyy/mm/' => 'س‌س‌س‌س/م‌م/',
#   'yyyy_mm' => 'س‌س‌س‌س_م‌م',
#   'yyyy/mm/dd/' => 'س‌س‌س‌س/م‌م/ر‌ر/',
#   'yyyy_mm_dd' => 'س‌س‌س‌س_م‌م_ر‌ر',
#   'yyyy/mm/dd-week/' => 'س‌س‌س‌س/م‌م/ر‌ر_هفته/',
#   'week_yyyy_mm_dd' => 'هفته_س‌س‌س‌س_م‌م_ر‌ر',
#   'category/sub_category/' => 'دسته/زیر_دسته/',
#   'category/sub-category/' => 'دسته/زیر-دسته/',
#   'cat_category' => 'دسته_دسته',
    'Saving blog failed: [_1]' => 'دخیره سازی وبلاگ شکست خورد: [_1]',
#   'You do not have permission to configure the blog' => 'Vous n\'avez pas la permission de configurer le weblog.',
    'Saving map failed: [_1]' => 'ذخیره سازی الگو شکست خورد: [_1]',
#   'Parse error: [_1]' => 'Erreur de parsing : [_1]',
    'Build error: [_1]' => 'خطای ساختن: [_1]',
#   'Rebuild-option name must not contain special characters' => 'L option de reconstruction de nom ne doit pas contenir de caractères spéciaux',
    'index template \'[_1]\'' => 'قالب اندکس \'[_1]\'',
    'entry \'[_1]\'' => 'نوشته \'[_1]\'',
    'Ping \'[_1]\' failed: [_2]' => 'ارسال دنبالک \'[_1]\' شکست خورد: [_2]',
#   'You cannot modify your own permissions.' => 'Vous ne pouvez pas modifier vos propres permissions.',
#   'You are not allowed to edit the permissions of this author.' => 'Vous n êtes pas autorisé à modifier les autorisations de cet auteur.',
#   'Edit Permissions' => 'Editer les Autorisations',
    'Edit Profile' => 'ویرایش مشخصات',
#   'No entry ID provided' => 'Aucune ID de Note fournie',
#   'No such entry \'[_1]\'' => 'Aucune Note du type \'[_1]\'',
#   'No email address for author \'[_1]\'' => 'L\'auteur \'[_1]\' ne possède pas d\'adresse e-mail',
#   'No valid recipients found for the entry notification.' => 'Aucun destinataire valide n\'a été trouvé pour la notification de cette note.',
#   'Error sending mail ([_1]); try another MailTransfer setting?' => 'Erreur lors de l\'envoi de l\'e-mail ([_1]); essayer un autre paramètre de MailTransfer ?',
#   'You did not choose a file to upload.' => 'Vous n\'avez pas sélectionné de fichier à envoyer.',
#   'Invalid extra path \'[_1]\'' => 'Chemin supplémentaire invalide \'[_1]\'',
#   'Can\'t make path \'[_1]\': [_2]' => 'Impossible de créer le chemin \'[_1]\' : [_2]',
#   'Invalid temp file name \'[_1]\'' => 'Nom de fichier temporaire invalide \'[_1]\'',
#   'Error opening \'[_1]\': [_2]' => 'Erreur lors de l\'ouverture de \'[_1]\' : [_2]',
#   'Error deleting \'[_1]\': [_2]' => 'Erreur lors de la suppression de \'[_1]\' : [_2]',
#   'File with name \'[_1]\' already exists. (Install ' => 'Le fichier portant le nom \'[_1]\' existe déjà. (Installez ',
#   'Error creating temporary file; please check your TempDir ' => 'Erreur lors de la création du fichier temporaire; veuillez vérifier votre répertoire temporaire (Temp) ',
#   'unassigned' => 'non assigné',
#   'File with name \'[_1]\' already exists; Tried to write ' => 'Le fichier portant le nom \'[_1]\' existe déjà; Essayez d\'écrire ',
#   'Error writing upload to \'[_1]\': [_2]' => 'Erreur d\'écriture lors de l\'envoi de \'[_1]\' : [_2]',
#   'Perl module Image::Size is required to determine ' => 'le Module Perl Image::Size est requis pour déterminer ',
#   'Invalid date(s) specified for date range.' => 'Date(s) incorrecte(s) pour la sélection de calendrier.',
#   'Error in search expression: [_1]' => 'Erreur dans la recherche de l expression : [_1]',
#   'Saving object failed: [_2]' => 'La sauvegarde des objets a échoué : [_2]',
    'Search & Replace' => 'جستجو و جایگزینی',
#   'No blog ID' => 'Aucun blog ID',
    'You do not have export permissions' => 'شما مجوزهای لازم صدور را ندارید.',
    'You do not have import permissions' => 'شما مجوزهای لازم وارد کردن را ندارید.',
    'You do not have permission to create authors' => 'شما مجوزهای لازم برای ساخت نویسندگان را ندارید.',
    'Preferences' => 'الویت ها',
    'Add a Category' => 'افزودن دسته',
    'No label' => 'بدون عنوان',
    'Category name cannot be blank.' => 'نام دسته نمی تواند خالی باشد.',
#   'That action ([_1]) is apparently not implemented!' => 'Cette action ([_1]) n\'est visiblement pas implémentée!',
    'Permission denied' => 'غير قابل دسترسي',

    ## ./lib/MT/FileMgr/FTP.pm
    'Creating path \'[_1]\' failed: [_2]' => 'ساخت مسیر \'[_1]\' شکست خورد: [_2]',
    'Renaming \'[_1]\' to \'[_2]\' failed: [_3]' => 'تغییر نام \'[_1]\' به \'[_2]\' شکست خورد: [_3]',
    'Deleting \'[_1]\' failed: [_2]' => 'حذف \'[_1]\' شکست خورد: [_2]',

    ## ./lib/MT/FileMgr/SFTP.pm
    'SFTP connection failed: [_1]' => 'اتصال اس اف تی پی شکستخورد: [_1]',
    'SFTP get failed: [_1]' => 'در یافت از اس اف تی پی شکست خورد: [_1]',
    'SFTP put failed: [_1]' => 'ارسال به اس اف تی پی شکست خورد: [_1]',

    ## ./lib/MT/FileMgr/DAV.pm
#   'DAV connection failed: [_1]' => 'La connection DAV a échoué : [_1]',
#   'DAV open failed: [_1]' => 'Ouverture DAV a échouée : [_1]',
#   'DAV get failed: [_1]' => 'Obtention DAV a échouée : [_1]',
#   'DAV put failed: [_1]' => 'Mettre DAV a échouée : [_1]',

    ## ./lib/MT/FileMgr/Local.pm

    ## ./lib/MT/I18N/default.pm

    ## ./lib/MT/I18N/ja.pm

    ## ./lib/MT/I18N/en_us.pm

    ## ./build/Html.pm

    ## ./build/Build.pm

    ## ./build/sample.pm

    ## ./build/cwapi.pm

    ## ./build/Backup.pm

    ## ./extlib/DateTimePPExtra.pm

    ## ./extlib/DateTimePP.pm

    ## ./extlib/JSON.pm

    ## ./extlib/Jcode.pm

    ## ./extlib/DateTime.pm

    ## ./extlib/CGI.pm

    ## ./extlib/URI.pm

    ## ./extlib/LWP.pm

    ## ./extlib/Module/Load.pm

    ## ./extlib/Module/Load/Conditional.pm

    ## ./extlib/URI/_userpass.pm

    ## ./extlib/URI/_login.pm

    ## ./extlib/URI/QueryParam.pm

    ## ./extlib/URI/http.pm

    ## ./extlib/URI/URL.pm

    ## ./extlib/URI/telnet.pm

    ## ./extlib/URI/_foreign.pm

    ## ./extlib/URI/_segment.pm

    ## ./extlib/URI/rsync.pm

    ## ./extlib/URI/WithBase.pm

    ## ./extlib/URI/_query.pm

    ## ./extlib/URI/pop.pm

    ## ./extlib/URI/urn.pm

    ## ./extlib/URI/Fetch.pm

    ## ./extlib/URI/rtspu.pm

    ## ./extlib/URI/rtsp.pm

    ## ./extlib/URI/file.pm

    ## ./extlib/URI/Heuristic.pm

    ## ./extlib/URI/_server.pm

    ## ./extlib/URI/sip.pm

    ## ./extlib/URI/gopher.pm

    ## ./extlib/URI/_generic.pm

    ## ./extlib/URI/news.pm

    ## ./extlib/URI/ldap.pm

    ## ./extlib/URI/sips.pm

    ## ./extlib/URI/ssh.pm

    ## ./extlib/URI/https.pm

    ## ./extlib/URI/mailto.pm

    ## ./extlib/URI/ftp.pm

    ## ./extlib/URI/snews.pm

    ## ./extlib/URI/rlogin.pm

    ## ./extlib/URI/nntp.pm

    ## ./extlib/URI/Escape.pm

    ## ./extlib/URI/data.pm

    ## ./extlib/URI/Fetch/Response.pm

    ## ./extlib/URI/file/OS2.pm

    ## ./extlib/URI/file/Base.pm

    ## ./extlib/URI/file/Mac.pm

    ## ./extlib/URI/file/QNX.pm

    ## ./extlib/URI/file/FAT.pm

    ## ./extlib/URI/file/Win32.pm

    ## ./extlib/URI/file/Unix.pm

    ## ./extlib/URI/urn/oid.pm

    ## ./extlib/URI/urn/isbn.pm

    ## ./extlib/XML/Simple.pm

    ## ./extlib/XML/XPath.pm

    ## ./extlib/XML/NamespaceSupport.pm

    ## ./extlib/XML/SAX.pm

    ## ./extlib/XML/Elemental.pm

    ## ./extlib/XML/Atom.pm

    ## ./extlib/XML/Parser/Lite.pm

    ## ./extlib/XML/Parser/Style/Elemental.pm

    ## ./extlib/XML/SAX/Exception.pm

    ## ./extlib/XML/SAX/DocumentLocator.pm

    ## ./extlib/XML/SAX/Base.pm

    ## ./extlib/XML/SAX/ParserFactory.pm

    ## ./extlib/XML/SAX/PurePerl.pm

    ## ./extlib/XML/SAX/PurePerl/UnicodeExt.pm

    ## ./extlib/XML/SAX/PurePerl/DebugHandler.pm

    ## ./extlib/XML/SAX/PurePerl/NoUnicodeExt.pm

    ## ./extlib/XML/SAX/PurePerl/Productions.pm

    ## ./extlib/XML/SAX/PurePerl/Exception.pm

    ## ./extlib/XML/SAX/PurePerl/XMLDecl.pm

    ## ./extlib/XML/SAX/PurePerl/DocType.pm

    ## ./extlib/XML/SAX/PurePerl/DTDDecls.pm

    ## ./extlib/XML/SAX/PurePerl/EncodingDetect.pm

    ## ./extlib/XML/SAX/PurePerl/Reader.pm

    ## ./extlib/XML/SAX/PurePerl/Reader/UnicodeExt.pm

    ## ./extlib/XML/SAX/PurePerl/Reader/NoUnicodeExt.pm

    ## ./extlib/XML/SAX/PurePerl/Reader/String.pm

    ## ./extlib/XML/SAX/PurePerl/Reader/Stream.pm

    ## ./extlib/XML/SAX/PurePerl/Reader/URI.pm

    ## ./extlib/XML/Elemental/Element.pm

    ## ./extlib/XML/Elemental/SAXHandler.pm

    ## ./extlib/XML/Elemental/Characters.pm

    ## ./extlib/XML/Elemental/Node.pm

    ## ./extlib/XML/Elemental/Util.pm

    ## ./extlib/XML/Elemental/Document.pm

    ## ./extlib/XML/Atom/Author.pm

    ## ./extlib/XML/Atom/Link.pm

    ## ./extlib/XML/Atom/Client.pm

    ## ./extlib/XML/Atom/ErrorHandler.pm

    ## ./extlib/XML/Atom/Server.pm

    ## ./extlib/XML/Atom/API.pm

    ## ./extlib/XML/Atom/Feed.pm

    ## ./extlib/XML/Atom/Person.pm

    ## ./extlib/XML/Atom/Content.pm

    ## ./extlib/XML/Atom/Util.pm

    ## ./extlib/XML/Atom/Thing.pm

    ## ./extlib/XML/Atom/Entry.pm

    ## ./extlib/XML/XPath/Literal.pm

    ## ./extlib/XML/XPath/Root.pm

    ## ./extlib/XML/XPath/PerlSAX.pm

    ## ./extlib/XML/XPath/Parser.pm

    ## ./extlib/XML/XPath/Step.pm

    ## ./extlib/XML/XPath/Expr.pm

    ## ./extlib/XML/XPath/Function.pm

    ## ./extlib/XML/XPath/Variable.pm

    ## ./extlib/XML/XPath/NodeSet.pm

    ## ./extlib/XML/XPath/Builder.pm

    ## ./extlib/XML/XPath/Node.pm

    ## ./extlib/XML/XPath/LocationPath.pm

    ## ./extlib/XML/XPath/XMLParser.pm

    ## ./extlib/XML/XPath/Boolean.pm

    ## ./extlib/XML/XPath/Number.pm

    ## ./extlib/XML/XPath/Node/Comment.pm

    ## ./extlib/XML/XPath/Node/Attribute.pm

    ## ./extlib/XML/XPath/Node/Element.pm

    ## ./extlib/XML/XPath/Node/PI.pm

    ## ./extlib/XML/XPath/Node/Text.pm

    ## ./extlib/XML/XPath/Node/Namespace.pm

    ## ./extlib/File/Listing.pm

    ## ./extlib/File/Temp.pm

    ## ./extlib/File/Copy/Recursive.pm

    ## ./extlib/MIME/Words.pm

    ## ./extlib/HTTP/Headers.pm

    ## ./extlib/HTTP/Negotiate.pm

    ## ./extlib/HTTP/Daemon.pm

    ## ./extlib/HTTP/Response.pm

    ## ./extlib/HTTP/Request.pm

    ## ./extlib/HTTP/Message.pm

    ## ./extlib/HTTP/Status.pm

    ## ./extlib/HTTP/Date.pm

    ## ./extlib/HTTP/Cookies.pm

    ## ./extlib/HTTP/Headers/ETag.pm

    ## ./extlib/HTTP/Headers/Auth.pm

    ## ./extlib/HTTP/Headers/Util.pm

    ## ./extlib/HTTP/Request/Common.pm

    ## ./extlib/JSON/Parser.pm

    ## ./extlib/JSON/Converter.pm

    ## ./extlib/WWW/RobotRules.pm

    ## ./extlib/WWW/RobotRules/AnyDBM_File.pm

    ## ./extlib/DateTime/LocaleCatalog.pm

    ## ./extlib/DateTime/LeapSecond.pm

    ## ./extlib/DateTime/TimeZone.pm

    ## ./extlib/DateTime/Infinite.pm

    ## ./extlib/DateTime/Locale.pm

    ## ./extlib/DateTime/Duration.pm

    ## ./extlib/DateTime/TimeZoneCatalog.pm

    ## ./extlib/DateTime/Locale/Base.pm

    ## ./extlib/DateTime/Locale/root.pm

    ## ./extlib/DateTime/Locale/Alias/ISO639_2.pm

    ## ./extlib/DateTime/TimeZone/Floating.pm

    ## ./extlib/DateTime/TimeZone/OlsonDB.pm

    ## ./extlib/DateTime/TimeZone/UTC.pm

    ## ./extlib/DateTime/TimeZone/OffsetOnly.pm

    ## ./extlib/DateTime/TimeZone/Local.pm

    ## ./extlib/Apache/SOAP.pm

    ## ./extlib/Apache/XMLRPC/Lite.pm

    ## ./extlib/IPC/Cmd.pm

    ## ./extlib/Attribute/Params/Validate.pm

    ## ./extlib/Locale/Maketext.pm

    ## ./extlib/IO/SessionSet.pm

    ## ./extlib/IO/SessionData.pm

    ## ./extlib/Archive/Extract.pm

    ## ./extlib/Class/ErrorHandler.pm

    ## ./extlib/Class/Accessor.pm

    ## ./extlib/Class/Accessor/Fast.pm

    ## ./extlib/Jcode/Tr.pm

    ## ./extlib/Jcode/H2Z.pm

    ## ./extlib/Jcode/Constants.pm

    ## ./extlib/Jcode/Unicode/Constants.pm

    ## ./extlib/Jcode/Unicode/NoXS.pm

    ## ./extlib/Params/Validate.pm

    ## ./extlib/Params/ValidateXS.pm

    ## ./extlib/Params/Check.pm

    ## ./extlib/Params/ValidatePP.pm

    ## ./extlib/Net/HTTP.pm

    ## ./extlib/Net/HTTPS.pm

    ## ./extlib/Net/HTTP/Methods.pm

    ## ./extlib/Net/HTTP/NB.pm

    ## ./extlib/LWP/Simple.pm

    ## ./extlib/LWP/MemberMixin.pm

    ## ./extlib/LWP/Debug.pm

    ## ./extlib/LWP/RobotUA.pm

    ## ./extlib/LWP/UserAgent.pm

    ## ./extlib/LWP/MediaTypes.pm

    ## ./extlib/LWP/Protocol.pm

    ## ./extlib/LWP/ConnCache.pm

    ## ./extlib/LWP/Protocol/GHTTP.pm

    ## ./extlib/LWP/Protocol/http.pm

    ## ./extlib/LWP/Protocol/nogo.pm

    ## ./extlib/LWP/Protocol/file.pm

    ## ./extlib/LWP/Protocol/gopher.pm

    ## ./extlib/LWP/Protocol/http10.pm

    ## ./extlib/LWP/Protocol/https.pm

    ## ./extlib/LWP/Protocol/mailto.pm

    ## ./extlib/LWP/Protocol/ftp.pm

    ## ./extlib/LWP/Protocol/nntp.pm

    ## ./extlib/LWP/Protocol/https10.pm

    ## ./extlib/LWP/Protocol/data.pm

    ## ./extlib/LWP/Authen/Basic.pm

    ## ./extlib/LWP/Authen/Digest.pm

    ## ./extlib/HTML/Template.pm

    ## ./extlib/HTML/Form.pm

    ## ./extlib/UDDI/Lite.pm

    ## ./extlib/XMLRPC/Lite.pm

    ## ./extlib/XMLRPC/Test.pm

    ## ./extlib/XMLRPC/Transport/TCP.pm

    ## ./extlib/XMLRPC/Transport/HTTP.pm

    ## ./extlib/XMLRPC/Transport/POP3.pm

    ## ./extlib/SOAP/Lite.pm

    ## ./extlib/SOAP/Test.pm

    ## ./extlib/SOAP/Transport/IO.pm

    ## ./extlib/SOAP/Transport/TCP.pm

    ## ./extlib/SOAP/Transport/MAILTO.pm

    ## ./extlib/SOAP/Transport/FTP.pm

    ## ./extlib/SOAP/Transport/LOCAL.pm

    ## ./extlib/SOAP/Transport/MQ.pm

    ## ./extlib/SOAP/Transport/HTTP.pm

    ## ./extlib/SOAP/Transport/JABBER.pm

    ## ./extlib/SOAP/Transport/POP3.pm

    ## ./extlib/Math/BigInt.pm

    ## ./extlib/Math/BigInt/Scalar.pm

    ## ./extlib/Math/BigInt/Trace.pm

    ## ./extlib/Math/BigInt/Calc.pm

    ## ./extlib/I18N/LangTags.pm

    ## ./extlib/I18N/LangTags/List.pm

    ## ./extlib/Image/Size.pm

    ## ./extlib/CGI/Cookie.pm

    ## ./extlib/CGI/Apache.pm

    ## ./extlib/CGI/Fast.pm

    ## ./extlib/CGI/Pretty.pm

    ## ./extlib/CGI/Carp.pm

    ## ./extlib/CGI/Util.pm

    ## ./extlib/CGI/Switch.pm

    ## ./extlib/CGI/Push.pm

    ## ./t/Bar.pm

    ## ./t/Foo.pm

    ## ./t/lib/Text/WikiFormat.pm

    ## ./t/lib/LWP/UserAgent/Local.pm
    
#   'You are currently performing a search. Please wait until your search is completed.' => '',
#   'We were unable to create your configuration file.' => '',
#   'If you would like to check the directory permissions and retry, click the \'Retry\' button.' => '',
#   'The settings below have been written to the file <tt>[_1]</tt>. If any of these settings are incorrect, you may click the \'Back\' button below to reconfigure them.' => '', 
);


1;

## New words: 545
