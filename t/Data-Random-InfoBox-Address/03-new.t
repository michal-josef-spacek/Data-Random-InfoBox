use strict;
use warnings;

use Data::Random::InfoBox::Address;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox::Address->new;
isa_ok($obj, 'Data::Random::InfoBox::Address');

# Test.
eval {
	Data::Random::InfoBox::Address->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Bad parameter \'\'.');

# Test.
eval {
	Data::Random::InfoBox::Address->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Bad parameter \'something\'.');
