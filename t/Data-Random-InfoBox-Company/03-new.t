use strict;
use warnings;

use Data::Random::InfoBox::Company;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox::Company->new;
isa_ok($obj, 'Data::Random::InfoBox::Company');
