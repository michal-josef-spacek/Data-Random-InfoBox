use strict;
use warnings;

use Data::Random::InfoBox::Address;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Random::InfoBox::Address::VERSION, 0.01, 'Version.');
