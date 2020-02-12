#!/usr/bin/env perl

$count = 1;
$occurance = 0;
$filename = shift @ARGV;
printf("\nYou've selected Perl Search.");
printf "\nPlease enter a word to search: ";
$word = <STDIN>;
chomp $word;

open (FILE, "<", $filename) or die "Cannot read the file $filename: $!\n";

while ($line = <FILE>)
{
    if ($line =~ m/$word/)
    {
       print "$word has been found on line $count.\n\n";
       $occurance++;
    }
    $count++;
}
if ($occurance =~ 0)
{
    print "$word was not found in the file";
}
close (FILE);
