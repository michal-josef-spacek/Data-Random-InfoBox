use strict;
use warnings;

use Data::Random::InfoBox::Company;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Random::InfoBox::Company::VERSION, 0.01, 'Version.');
