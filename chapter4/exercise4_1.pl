use strict;
use warnings;
use IO::Prompter;

my $numbers = prompt 'Enter a line of numbers: ';
while ($numbers !~ /^[\d\s]+$/) {
    print "Invalid input.\n";
    $numbers = prompt 'Enter a line of numbers: ';
}

for (split / /, $numbers) {
    if ($_ > 10 && $_ % 2 == 0) {
        print $_ ** 2, " ";
    }
}
print "\n";
