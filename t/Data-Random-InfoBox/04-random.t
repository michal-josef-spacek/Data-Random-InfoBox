use strict;
use warnings;

use Data::Random::InfoBox;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox->new;
my @ret = $obj->random;
isa_ok($ret[0], 'Data::InfoBox');
