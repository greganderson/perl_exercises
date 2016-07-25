use strict;
use warnings;
use IO::Prompter;
use Set::Scalar;

my $A = prompt "Line A: ";
my $B = prompt "Line B: ";

my $awords = Set::Scalar->new(split / /, $A);
my $bwords = Set::Scalar->new(split / /, $B);
my $adiff = $awords - $bwords;
my $bdiff = $bwords - $awords;
my $same = $awords * $bwords;

my @output;

while (defined(my $e = $adiff->each)) {
    push @output, "A\t$e";
}

while (defined(my $e = $bdiff->each)) {
    push @output, "B\t$e";
}

while (defined(my $e = $same->each)) {
    push @output, "AB\t$e";
}

my @sorted = sort {(split /\t/, $a)[1] cmp (split /\t/, $b)[1]} @output;

foreach my $entry (@sorted) {
    print "$entry\n";
}
