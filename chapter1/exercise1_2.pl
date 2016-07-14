use strict;
use warnings;

my @time_data = localtime(time);
print "Enter your birth year: ";
my $yearofbirth = <>;
chomp($yearofbirth);
print "Your age is ", 1900 + $time_data[5] - $yearofbirth, ".\n";
