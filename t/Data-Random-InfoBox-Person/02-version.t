use strict;
use warnings;

use Data::Random::InfoBox::Person;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Random::InfoBox::Person::VERSION, 0.01, 'Version.');
