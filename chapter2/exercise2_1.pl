use strict;
use warnings;

print "Enter number: ";
my $num = <>;
chomp($num);
while ($num =~ /\D/) {
    print "Invalid input.\n";
    print "Enter number: ";
    $num = <>;
    chomp($num);
}

print "You entered $num\n";

my $len = length($num);
for (my $i = 1; $i <= 10; $i++) {
    printf("%2d * %${len}d = %d\n", $i, $num, $i * $num);
}
