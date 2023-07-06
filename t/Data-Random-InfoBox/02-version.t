use strict;
use warnings;

use Data::Random::InfoBox;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Random::InfoBox::VERSION, 0.01, 'Version.');
