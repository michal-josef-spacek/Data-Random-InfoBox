use strict;
use warnings;

use Data::Random::InfoBox;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox->new;
my @ret = $obj->random;
isa_ok($ret[0], 'Data::InfoBox');

# Test.
$obj = Data::Random::InfoBox->new(
	'type' => 'address',
);
@ret = $obj->random;
isa_ok($ret[0], 'Data::InfoBox');

# Test.
$obj = Data::Random::InfoBox->new(
	'type' => 'company',
);
@ret = $obj->random;
isa_ok($ret[0], 'Data::InfoBox');

# Test.
$obj = Data::Random::InfoBox->new(
	'type' => 'person',
);
@ret = $obj->random;
isa_ok($ret[0], 'Data::InfoBox');
