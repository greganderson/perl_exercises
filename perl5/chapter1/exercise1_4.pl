use strict;
use warnings;

print "Enter 3 digits between 1-9: ";
my $num = <>;
chomp($num);
while ($num =~ /^[^1-9]{3}$/) {
    print "Try again.\n";
    print "Enter 3 digits between 1-9: ";
    $num = <>;
    chomp($num);
}

my $c0 = substr($num, 0, 1);
my $c1 = substr($num, 1, 1);
my $c2 = substr($num, 2, 1);

my $n1 = $c0 . $c1;
my $n2 = $c0 . $c2;
my $n3 = $c1 . $c0;
my $n4 = $c1 . $c2;
my $n5 = $c2 . $c0;
my $n6 = $c2 . $c1;

my $result = $n1 + $n2 + $n3 + $n4 + $n5 + $n6;

print "End result: ", $result / ($c0 + $c1 + $c2), "\n";
