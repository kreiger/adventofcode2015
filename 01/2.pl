#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

local $/;

my $input = <>;

my $floor;
for my $i (0..length($input)) {
    $floor += '(' eq substr($input, $i, 1) ? 1 : -1;
    say $i + 1 and last if $floor == -1;
}