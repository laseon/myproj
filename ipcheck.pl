#!/usr/bin/perl
print "ip주소 입력: ";
$ip = <STDIN>;
if($ip =~ /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\:\d{1,5})/){
	print "ip주소 형식입니다.\n";}
else{
	print "ip주소 형식이 아닙니다.\n";
	}
