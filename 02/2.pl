#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my $total = 0;

while (<>) {
    my ($a, $b, $c) = sort { $a <=> $b } split 'x';
    $total += 2*$a+2*$b+$a*$b*$c;
}

say $total;