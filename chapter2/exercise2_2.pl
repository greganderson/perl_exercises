use strict;
use warnings;

my $count = 0;
my $total = 0;
my $num = 0;
print "Enter number (negative number to stop): ";
$num = <>;
chomp($num);
while (1) {
    if ($num =~ /^-?\d+$/) {
        if ($num < 0) {
            last;
        }
        $count++;
        $total += $num;
    }
    else {
        print "Invalid input.\n";
    }
    print "Enter number (negative number to stop): ";
    $num = <>;
    chomp($num);
}

print "Number of numbers: $count\n";
print "Average: ", $total / $count, "\n";
