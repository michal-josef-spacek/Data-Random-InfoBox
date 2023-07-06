use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Data::Random::InfoBox::Person', 'Data::Random::InfoBox::Person is covered.');
