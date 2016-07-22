use strict;
use warnings;
use IO::Prompter;

my $str = prompt "Enter a string: ";
print "You entered: $str\n";

my $num = prompt -num, 'Enter a number';
print "Your number: $num\n";

my $passwd = prompt "Enter your password", -echo=>'*';
print "Your password: $passwd\n";

my $selection = prompt "Choose wisely...", -menu=> {
        wealth => [ 'moderate', 'vast', 'incalculable' ],
        health => [ 'hale', 'hearty', 'rude' ],
        wisdom => [ 'cosmic', 'folk' ],
    }, '>';

print "Your selection: $selection\n";
