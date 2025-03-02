use strict;
use warnings;

use Data::Random::InfoBox::Person;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox::Person->new;
isa_ok($obj, 'Data::Random::InfoBox::Person');

# Test.
eval {
	Data::Random::InfoBox::Person->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Bad parameter \'\'.');

# Test.
eval {
	Data::Random::InfoBox::Person->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Bad parameter \'something\'.');
