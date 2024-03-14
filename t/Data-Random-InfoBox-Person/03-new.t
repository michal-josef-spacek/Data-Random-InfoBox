use strict;
use warnings;

use Data::Random::InfoBox::Person;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox::Person->new;
isa_ok($obj, 'Data::Random::InfoBox::Person');
