use strict;
use warnings;

my $q1 = get_user_input("Do you own a house?\n");
my $q2 = get_user_input("Do you own a big car?\n");
my $q3 = get_user_input("Do you own a small car?\n");
my $q4 = get_user_input("Do you own a grocery cart?\n");
my $q5 = get_user_input("Do you live on the street?\n");

sub get_user_input {
    print shift(@_);
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

if ($q1 && $q2) {
    print "You are a rich person.\n";
}
elsif (!$q1 && !$q2 && !$q3 && ($q4 || $q5)) {
    print "You are a poor person.\n";
}
else {
    print "You are a middle-class person\n";
}
