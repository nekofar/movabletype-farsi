# Copyright (C) 2005 -2006 Aziz Ashofte <Ashofteh@gmail.com >
# Heavily based on Hamid Hashemi's <hamid@morva.net> JalaliDate package  
# with some minor changes and additions in order to make it more adjusted for the new 
# functionalities introduced in JalaliEX

# Date Converter Functions Original PHP version is:
#   Copyright (C) 2001  Roozbeh Pournader <roozbeh@sharif.edu>
#   Copyright (C) 2001  Mohammad Toossi <mohammad@bamdad.org>
# and can be found at the World Wide Web address:
#   http://www.farsiweb.info/jalali/jalali.phps
# For licensing issues, contact Aziz Ashofte <Ashofteh@gmail.com >

package JalaliEX;

use strict;
use warnings;
use POSIX qw( strftime );

BEGIN {
  use Exporter   ();
  our ($VERSION, @ISA, @EXPORT, @EXPORT_OK, %EXPORT_TAGS);

  $VERSION     = 1.0;
  @ISA         = qw(Exporter);
  @EXPORT      = qw(&farsi_number &english_number &gregorian_to_jalali &g2jstrftime &jalali_to_gregorian &j2g_ts &g2j_ts);
  %EXPORT_TAGS = ( );    
}

our @EXPORT_OK;

my @g_days_in_month = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
my @j_days_in_month = (31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);

my $div = sub {
  return int( $_[0] / $_[1] );
};

sub gregorian_to_jalali($$$) # ( @_[0] = Gregorian_Year , @_[1] = Gregorian_Month , @_[2] = Gregorian_Day )
{ 
  my $i;
  my $gy = $_[0]-1600;
  my $gm = $_[1]-1;
  my $gd = $_[2]-1;
  
  my $g_day_no = 365*$gy+&$div($gy+3,4)-&$div($gy+99,100)+&$div($gy+399,400);
  
  for ($i=0; $i < $gm; ++$i)
  {
    $g_day_no += $g_days_in_month[$i];
  }
  ++$g_day_no if ($gm>1 && (($gy%4==0 && $gy%100!=0) || ($gy%400==0)));
  $g_day_no += $gd;
  
  my $j_day_no = $g_day_no-79;
  
  my $j_np = &$div($j_day_no, 12053); # 12053 = 365*33 + 32/4
  $j_day_no %= 12053;

  my $jy = 979+33*$j_np+4*&$div($j_day_no,1461); # 1461 = 365*4 + 4/4

  $j_day_no %= 1461;

  if ($j_day_no >= 366)
  {
    $jy += &$div($j_day_no-1, 365);
    $j_day_no = ($j_day_no-1)%365;
  }

  for ($i = 0; $i < 11 && $j_day_no >= $j_days_in_month[$i]; ++$i)
  {
    $j_day_no -= $j_days_in_month[$i];
  }
  my $jm = $i+1;
  my $jd = $j_day_no+1;

  return ( $jy, $jm, $jd );
}

sub g2jstrftime($$) # just Like strftime = ( @_[0] = pattern, @_[1] = timestamp )
{
  my $pattern = $_[0];
  my $g_y = substr($_[1],0,4);
  my $g_y = sprintf("%04d", $g_y);
  my $g_m = substr($_[1],4,2);
  my $g_d = substr($_[1],6,2);
  my $hour_24 = substr($_[1],8,2);
  my $hour_12 = $hour_24%12;
  my $min = substr($_[1],10,2);
  my $min = sprintf("%02d", $min);
  my $sec = substr($_[1],12,2);
  my $sec = sprintf("%02d", $sec);
  my $g_d_s = strftime ("%a",0,0,0,$g_d,$g_m-1,$g_y-1900);
  my $t_s = '&#1589;&#1576;&#1581;';
  $t_s = '&#1576;&#1593;&#1583;&#1575;&#1586;&#1592;&#1607;&#1585;' if ( $hour_24 >= 12 );
  my ($j_y, $j_m, $j_d) = gregorian_to_jalali ($g_y, $g_m, $g_d);

  my ($j_d_s, $j_d_i, $j_d_w);
  if ( $g_d_s eq 'Sat' ) { ($j_d_s, $j_d_i) = ('&#1588;&#1606;&#1576;&#1607;', '&#1588;&#1606;&#1576;&#1607;'); $j_d_w = '0'; }
  elsif ( $g_d_s eq 'Sun' ) { ($j_d_s, $j_d_i) = ('&#1740;&#1705;&#1588;&#1606;&#1576;&#1607;', '۱ &#1740;&#1705;&#1588;&#1606;&#1576;&#1607;'); $j_d_w = '1'; }
  elsif ( $g_d_s eq 'Mon' ) { ($j_d_s, $j_d_i) = ('&#1583;&#1608;&#1588;&#1606;&#1576;&#1607;', '۲ &#1583;&#1608;&#1588;&#1606;&#1576;&#1607;'); $j_d_w = '2'; }
  elsif ( $g_d_s eq 'Tue' ) { ($j_d_s, $j_d_i) = ('&#1587;&#1607; &#1588;&#1606;&#1576;&#1607;', '۳ &#1587;&#1607; &#1588;&#1606;&#1576;&#1607;'); $j_d_w = '3'; }
  elsif ( $g_d_s eq 'Wed' ) { ($j_d_s, $j_d_i) = ('&#1670;&#1607;&#1575;&#1585;&#1588;&#1606;&#1576;&#1607;', '۴ &#1670;&#1607;&#1575;&#1585;&#1588;&#1606;&#1576;&#1607;'); $j_d_w = '4'; }
  elsif ( $g_d_s eq 'Thu' ) { ($j_d_s, $j_d_i) = ('&#1662;&#1606;&#1580;&#1588;&#1606;&#1576;&#1607;', '۵ &#1662;&#1606;&#1580;&#1588;&#1606;&#1576;&#1607;'); $j_d_w = '5'; }
  elsif ( $g_d_s eq 'Fri' ) { ($j_d_s, $j_d_i) = ('&#1580;&#1605;&#1593;&#1607;', '&#1580;&#1605;&#1593;&#1607;'); $j_d_w = '6'; }

  my $j_m_s;
  if ( $j_m eq '1' ) 	{ $j_m_s = '&#1601;&#1585;&#1608;&#1585;&#1583;&#1740;&#1606;' }
  elsif ( $j_m eq '2' ) { $j_m_s = '&#1575;&#1585;&#1583;&#1740;&#1576;&#1607;&#1588;&#1578;' }
  elsif ( $j_m eq '3' ) { $j_m_s = '&#1582;&#1585;&#1583;&#1575;&#1583;' }
  elsif ( $j_m eq '4' ) { $j_m_s = '&#1578;&#1740;&#1585;' }
  elsif ( $j_m eq '5' ) { $j_m_s = '&#1605;&#1585;&#1583;&#1575;&#1583;' }
  elsif ( $j_m eq '6' ) { $j_m_s = '&#1588;&#1607;&#1585;&#1740;&#1608;&#1585;' }
  elsif ( $j_m eq '7' ) { $j_m_s = '&#1605;&#1607;&#1585;' }
  elsif ( $j_m eq '8' ) { $j_m_s = '&#1570;&#1576;&#1575;&#1606;' }
  elsif ( $j_m eq '9' ) { $j_m_s = '&#1570;&#1584;&#1585;' }
  elsif ( $j_m eq '10' ) { $j_m_s = '&#1583;&#1740;' }
  elsif ( $j_m eq '11' ) { $j_m_s = '&#1576;&#1607;&#1605;&#1606;' }
  elsif ( $j_m eq '12' ) { $j_m_s = '&#1575;&#1587;&#1601;&#1606;&#1583;' }
  
  my $j_d_pad = sprintf("%02d", $j_d);
  my $j_m_pad = sprintf("%02d", $j_m);
  my $hour_12_pad = sprintf("%02d", $hour_12); 
  my $hour_24_pad = sprintf("%02d", $hour_24); 
  my $j_y_s = substr ($j_y,2,2);
  my $j_m_i = $j_m_s."&#1605;&#1575;&#1607;";
  my @day_of_year = ( 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366 );  	
  my $j_doy = $day_of_year[ $j_m - 1 ] + $j_d; 
 
$pattern =~ s/\%a/$j_d_i/g;  
$pattern =~ s/\%A/$j_d_s/g;
$pattern =~ s/\%b/$j_m_i/g;
$pattern =~ s/\%B/$j_m_s/g;
$pattern =~ s/\%d/$j_d_pad/g;
$pattern =~ s/\%e/$j_d/g;
$pattern =~ s/\%H/$hour_24_pad/g;
$pattern =~ s/\%I/$hour_12_pad/g; 
$pattern =~ s/\%j/$j_doy/g;    	     
$pattern =~ s/\%k/$hour_24/g; 
$pattern =~ s/\%l/$hour_12/g;
$pattern =~ s/\%m/$j_m_pad/g; 
$pattern =~ s/\%M/$min/g;
$pattern =~ s/\%p/$t_s/g;
$pattern =~ s/\%S/$sec/g;
$pattern =~ s/\%w/$j_d_w/g;
$pattern =~ s/\%y/$j_y_s/g;
$pattern =~ s/\%Y/$j_y/g;

$pattern =~ s/\%x/$j_d $j_m_s $j_y/g;
$pattern =~ s/\%X/$hour_12:$min $t_s/g;
$pattern =~ s/\%z/$j_y$j_m_pad$j_d_pad$hour_24$min$sec/g;

return $pattern;
}

sub j2g_ts($) # just Like strftime = ( @_[0] = pattern, @_[1] = timestamp )
{
  my $ts = $_[0];
  my $j_y = substr($ts,0,4);
  my $j_m = substr($ts,4,2);
  my $j_d = substr($ts,6,2);
  my $mytime = substr($ts,8,6);
  my ($gy, $gm, $gd) = jalali_to_gregorian( $j_y , $j_m , $j_d );
  my $g_ts = $gy . $gm . $gd . $mytime;
  return $g_ts;
}

sub g2j_ts($) # just Like strftime = ( @_[0] = pattern, @_[1] = timestamp )
{
  my $ts = $_[0];
  my $j_ts = g2jstrftime('%z', $ts);
  return $j_ts;
}

sub jalali_to_gregorian($$$) # ( @_[0] = Jalali_Year , @_[1] = Jalali_Month , @_[2] = Jalali_Day )
{
  my $i;
  my $jy = $_[0]-979;
  my $jm = $_[1]-1;
  my $jd = $_[2]-1;

  my $j_day_no = 365*$jy + &$div($jy, 33)*8 + &$div($jy%33+3, 4);
  for ($i=0; $i < $jm; ++$i)
  {
    $j_day_no += $j_days_in_month[$i];
  }

  $j_day_no += $jd;

  my $g_day_no = $j_day_no+79;

  my $gy = 1600 + 400*&$div($g_day_no, 146097); # 146097 = 365*400 + 400/4 - 400/100 + 400/400
  $g_day_no = $g_day_no % 146097;

  my $leap = 1;
  if ($g_day_no >= 36525) # 36525 = 365*100 + 100/4
  {
    $g_day_no--;
    $gy += 100*&$div($g_day_no,  36524); # 36524 = 365*100 + 100/4 - 100/100
    $g_day_no = $g_day_no % 36524;

    if ($g_day_no >= 365)
    {
      $g_day_no++;
    }
    else
    {
      $leap = 0;
    }
  }

  $gy += 4*&$div($g_day_no, 1461); # 1461 = 365*4 + 4/4
  $g_day_no %= 1461;

  if ($g_day_no >= 366)
  {
    $leap = 0;

    $g_day_no--;
    $gy += &$div($g_day_no, 365);
    $g_day_no = $g_day_no % 365;
  }
  for ($i = 0; $g_day_no >= $g_days_in_month[$i] + ($i == 1 && $leap); $i++)
  {
    $g_day_no -= $g_days_in_month[$i] + ($i == 1 && $leap);
  }
  my $gm = $i+1;
  my $gd = $g_day_no+1;

 $gm = sprintf("%02d", $gm);
 $gd = sprintf("%02d", $gd); 
 $gy = sprintf("%04d", $gy); 
  return ($gy, $gm, $gd);
}

sub farsi_number($) # ( @_[0] = String contains english numbers to covert to farsi numbers )
{
  my %table;
  $table{"0"}="۰"; # Persian 0
  $table{"1"}="۱"; # Persian 1
  $table{"2"}="۲"; # Persian 2
  $table{"3"}="۳"; # Persian 3
  $table{"4"}="۴"; # Persian 4
  $table{"5"}="۵"; # Persian 5
  $table{"6"}="۶"; # Persian 6
  $table{"7"}="۷"; # Persian 7
  $table{"8"}="۸"; # Persian 8
  $table{"9"}="۹"; # Persian 9
  my $strout = '';
  my $char = 0;
  foreach (split //,$_[0])
  {
    if ( $table{$_} and $char == 0 )
    {
      $strout .= $table{$_};
    }
    else
    {
      $strout .= $_;
      $char = 1 if ( $_ eq '&' );
      $char = 0 if ( $_ eq ';' );
    }
  }
  return $strout;
}

sub english_number($) # ( @_[0] = String contains farsi numbers to covert to english  numbers )
{
  my %table;
  $table{"۰"}="0"; # Persian 0
  $table{"۱"}="1"; # Persian 1
  $table{"۲"}="2"; # Persian 2
  $table{"۳"}="3"; # Persian 3
  $table{"۴"}="4"; # Persian 4
  $table{"۵"}="5"; # Persian 5
  $table{"۶"}="6"; # Persian 6
  $table{"۷"}="7"; # Persian 7
  $table{"۸"}="8"; # Persian 8
  $table{"۹"}="9"; # Persian 9
  my $strout = '';
  my $char = 0;
  foreach (split //,$_[0])
  {
    if ( $table{$_} and $char == 0 )
    {
      $strout .= $table{$_};
    }
    else
    {
      $strout .= $_;
      $char = 1 if ( $_ eq '&' );
      $char = 0 if ( $_ eq ';' );
    }
  }
  return $strout;
}


END { }


1;