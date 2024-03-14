use strict;
use warnings;

use Data::Random::InfoBox::Address;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox::Address->new;
isa_ok($obj, 'Data::Random::InfoBox::Address');
