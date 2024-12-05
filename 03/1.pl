#!/usr/bin/perl

use v5.34;
use warnings;
use strict;
use feature 'say';
use experimental 'switch';

my $total = 1;
my %pos = ( '0,0' => 1 );
my ($x, $y) = (0, 0);

while (<>) {
    for (split '') {
        $x++ if />/;
        $x-- if /</;
        $y++ if /\^/;
        $y-- if /v/;
        $total++ unless $pos{"$x,$y"}++;
    }
}

say $total;
