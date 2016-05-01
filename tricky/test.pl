use strict;
use warnings;
use utf8;
binmode STDIN, ':encoding(cp932)';
binmode STDOUT, ':encoding(cp932)';
binmode STDERR, ':encoding(cp932)';

print "Who are you?\n";
my $line = <STDIN>;
chomp($line);

print "How old are you?\n";
my $old = <STDIN>;
chomp($old);
my $sq = $old * $old;

print "name:$line, old:$sq\n";