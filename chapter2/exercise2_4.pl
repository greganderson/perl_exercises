use strict;
use warnings;
use IO::Prompter;

my $n1 = prompt -num, 'Enter number (1)';
my $n2 = prompt -num, 'Enter number (2)';
my $n3 = prompt -num, 'Enter number (3)';
my $n4 = prompt -num, 'Enter number (4)';
my $n5 = prompt -num, 'Enter number (5)';

order(\$n1, \$n2);
order(\$n2, \$n3);
order(\$n3, \$n4);
order(\$n4, \$n5);

order(\$n1, \$n2);
order(\$n2, \$n3);
order(\$n3, \$n4);

order(\$n1, \$n2);
order(\$n2, \$n3);

order(\$n1, \$n2);

print "Ascending order: $n1, $n2, $n3, $n4, $n5\n";
print "Descending order: $n5, $n4, $n3, $n2, $n1\n";

sub order {
    my ($a, $b) = @_;
    if ($$a > $$b) {
        ($$a, $$b) = ($$b, $$a);
    }
}
