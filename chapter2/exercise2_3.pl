use strict;
use warnings;

print "Do you own a house?\n";
my $q1 = get_user_input();
#print "Do you own a big car?\n";
#print "Do you own a small car?\n";
#print "Do you own a grocery cart?\n";
#print "Do you live on the street?\n";

sub get_user_input {
    print "1 (yes) or 0 (no): ";
    my $num = <>;
    chomp($num);
    #print "$num\n";
    while ($num !~ /^[10]$/) {
        print "Invalid input.\n";
        print "1 (yes) or 0 (no): ";
        $num = <>;
        chomp($num);
    }
    return $num;
}

print "You entered: $q1\n";
