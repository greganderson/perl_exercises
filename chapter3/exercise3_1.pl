use strict;
use warnings;
use IO::Prompter;

print "Enter your message:\n";
my $input;
my $line = "continue";
while ($line ne "") {
    $line = prompt;
    $input .= $line . " ";
}

$input =~ s/\s+$//;

print "You entered:\n$input\n";

my $encrypted = "";

for (split //, $input) {
    if (/[a-z]/) {
        $_ = ord($_) + 13 > ord("z") ? chr(ord($_) - 13) : chr(ord($_) + 13);
    }
    elsif (/[A-Z]/) {
        $_ = ord($_) + 13 > ord("Z") ? chr(ord($_) - 13) : chr(ord($_) + 13);
    }
    $encrypted .= $_;
}

print "Encrypted:\n$encrypted\n";
