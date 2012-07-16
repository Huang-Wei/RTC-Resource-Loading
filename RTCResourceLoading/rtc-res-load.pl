#!/usr/bin/perl -w

sub read_loading_rule() {
	
}

#$rep_url = "https://sdijazzccm05.svl.ibm.com:9452/jazz/";
$rep_url = "";
$user = "";
$password = "";

sub init() {
	print("Input the repository URL:");
	chomp($rep_url = <STDIN>);
	print("Username:");
	chomp($user = <STDIN>);
	print("Password:");
	chomp($password = <STDIN>);
}

sub login() {
	print("=============Start:=============\n");
	system("scm login -r $rep_url -u $user -P $password -n jazzrep");
}

init();
login();