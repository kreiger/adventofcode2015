#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my $total = 0;

while (<>) {
    my ($a, $b, $c) = sort { $a <=> $b } split 'x';
    $total += 3*$a*$b + 2*$b*$c + 2*$a*$c
}

say $total;