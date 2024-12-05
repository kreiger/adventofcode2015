#!/usr/bin/perl

use v5.34;
use warnings;
use strict;
use feature 'say';
use experimental 'switch';

my $total = 1;
my %pos = ( '0,0' => 2 );
my @santas = ({x=>0, y=>0}, {x=>0, y=>0});
my $santa_index = 0;
while (<>) {
    for my $c (split '') { 
        my $s = $santas[$santa_index];
        $santa_index = 1 - $santa_index;
        $s->{x}++ if $c eq '>';
        $s->{x}-- if $c eq '<';
        $s->{y}++ if $c eq '^';
        $s->{y}-- if $c eq 'v';
        my %s = %{$s};
        $total++ unless $pos{"$s{x},$s{y}"}++;
    }
}

say $total;
