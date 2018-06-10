#!/usr/bin/env perl
use strict;
use warnings;

my $name = "world";

$_ = "default\n";

print "Hello, $name\n";
print;

my @list = ('camel', 42, 3.14);

print "The list has ", @list * 1, " elements, ";
print "the last element is ", $list[$#list], "\n";

foreach (@list) {
	print "$_\n";
}

my $bananas = 0;

print "We have bananas\n" if $bananas;
print "We have no bananas\n" unless $bananas;

my $c = 0;

until ($c > 10) {
	print $c, "\n";
	$c += 1;
}


