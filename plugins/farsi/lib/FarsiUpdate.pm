# Copyright 2005-2006 Aziz Ashofte. This code cannot be redistributed without
# permission from the author.  For more information, you can contact ashofteh@gmail.com
# Last edited: 2005-12-24

package FarsiUpdate;

use strict;
use base 'MT::App';
use MT;
use MT::Plugin;
use File::Basename qw(basename);

sub init {
    my $app = shift;
    $app->SUPER::init(@_) or return;
    $app->add_methods(
        check => \&check,
        update => \&update,
    );
    $app->{default_mode} = 'check';
    $app->{requires_login} = 1;
    $app;
}

sub check {
    my $app = shift;
    my $auth = $app->{author};
    my $q = $app->{query};
    $app->validate_magic() or return;
	my (%param) = @_;

    require MT::FileMgr;
    my $filemgr = MT::FileMgr->new('Local')
        or return $app->error(MT::FileMgr->errstr);
		
	my $url = 'http://aziza.persiangig.com/plugins/farsi/update/';
	my $user_agent = $app->new_ua;
    
	my $version_request = HTTP::Request->new( GET => $url."version.txt" );
  my $version_response = $user_agent->request($version_request);
	my @update_table = split(/ /, $version_response->content);
	my %update_table = @update_table;
		$param{file} = $version_response->content;
	my $new_version = $update_table{'version'};		
	
	my $old_version = $q->param('version');
	if ($new_version > $old_version) {
		$param{update} = 1;
	} else {
		$param{update} = 0;
	}
		$param{new_version} = $new_version;
		$param{old_version} = $old_version;	
    $app->build_page('check.tmpl', \%param);
}

sub update {
    my $app = shift;
    my $auth = $app->{author};
    my $q = $app->{query};
    $app->validate_magic() or return;
		my (%param) = @_;

    require MT::FileMgr;
    my $filemgr = MT::FileMgr->new('Local')
        or return $app->error(MT::FileMgr->errstr);
		
		my $url = 'http://aziza.persiangig.com/plugins/farsi/update/';
		my $user_agent = $app->new_ua;
    
		my $version_request = HTTP::Request->new( GET => $url."version.txt" );
		my $version_response = $user_agent->request($version_request);
		my @update_table = split(/ /, $version_response->content);
		my %update_table = @update_table;
		delete($update_table{'version'});
		
		my $key;
		foreach $key (keys %update_table) {

    my $trans_request = HTTP::Request->new( GET => $url.$key );
		my $trans_response = $user_agent->request($trans_request);    
		defined($filemgr->put_data( $trans_response->content, $update_table{$key} , 'upload' ))
			or die "Unable to update your files:".$filemgr->errstr;
	 }

	 $param{updated} = 1;
  $app->build_page('update.tmpl', \%param);
}

1;