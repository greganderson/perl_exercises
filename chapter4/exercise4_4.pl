use strict;
use warnings;
use Data::Dumper::Simple;

my $input = "";

while (<>) {
    $input .= $_;
}

$input =~ s/\s|[[:punct:]]//g;

my %bigrams;

for (my $i = 0; $i < length $input; $i += 2) {
    $bigrams{substr($input, $i, 2)}++;
}

foreach my $key (sort keys %bigrams) {
    print "$key\t$bigrams{$key}\n";
}
