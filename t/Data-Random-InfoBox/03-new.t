use strict;
use warnings;

use Data::Random::InfoBox;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $obj = Data::Random::InfoBox->new;
isa_ok($obj, 'Data::Random::InfoBox');

# Test.
eval {
	Data::Random::InfoBox->new(
		'type' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'type' has bad value.\n",
	"Parameter 'type' has bad value (bad).");
clean();

# Test.
eval {
	Data::Random::InfoBox->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Bad parameter \'\'.');

# Test.
eval {
	Data::Random::InfoBox->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Bad parameter \'something\'.');
