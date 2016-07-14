use strict;
use warnings;

print "Enter a digit between 1-9: ";
while (<>) {
    chomp;
    if (/^[1-9]$/) {
        last;
    }
    print "Try again.  Enter a digit between 1-9: ";
}

my $num = ($_ + 1) * 9;
print "($_ + 1) * 9 = $num\n";
my $result = substr($num, 0, 1) + substr($num, 1, 1);
print substr($num, 0, 1), " + ", substr($num, 1, 1), " = $result\n";
my $end_result = (($result * 262) - 27) / 3;
print "(($result * 262) - 27) / 3 = $end_result\n";
print "End result: $end_result\n";
