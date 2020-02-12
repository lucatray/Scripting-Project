#!/usr/bin/perl
my $fileNameP = shift @ARGV;
open(my $fh, '>', $fileNameP) or die "Could not open save file '$fileNameP' $!";
my $fileNameP2 = shift @ARGV;
open(MYINPUTFILE, $fileNameP2) or die "Could not open read file";
my(@lines) = <MYINPUTFILE>;
@lines = sort(@lines);
my($line);
foreach $line (@lines)
{ print $fh "$line"; }
close(MYINPUTFILE);
close($fh);
