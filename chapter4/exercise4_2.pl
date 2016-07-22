use strict;
use warnings;

my $input = "";
while (<>) {
    $input .= $_;
    if (eof) {
        next;
    }
}

my $lines = 0;
my $words = 0;
my $chars = 0;

for my $line (split /\n/, $input) {
    $lines++;
    for my $word (split / /, $line) {
        $words++;
    }
}

for (split //, $input) {
    $chars++;
}

print "lines: $lines, words: $words, characters: $chars\n";
print "reversed:\n";
my $rev = reverse $input;
print "$rev\n";
