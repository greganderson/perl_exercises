use strict;
use warnings;
use IO::Prompter;

my $word;

while (1) {
    my $is_palindrome = 1;
    $word = prompt "Type a word or phrase: ";
    $word =~ s/\s|[[:punct:]]//g;
    if (length $word == 1) {
        print "This is a palindrome, trivial!\n";
        next;
    }
    for (my $i = 0; $i < (length $word) / 2; $i++) {
        my $a = lc substr($word, $i, 1);
        my $b = lc substr($word, (length $word) - $i - 1, 1);
        if ($a ne $b) {
            print "Not a palindrome.\n";
            $is_palindrome = 0;
            last;
        }
    }
    if ($is_palindrome) {
        print "This is a palindrome.\n";
    }
}
