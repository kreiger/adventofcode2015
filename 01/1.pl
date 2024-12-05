#!/usr/bin/perl

use warnings;
use strict;
use feature 'say';

my $floor = 0;
while (<>) {
    $floor += tr/(// - tr/)//;
}
say $floor;
