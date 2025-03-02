package Data::Random::InfoBox;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Test::Shared::Fixture::Data::InfoBox::Address 0.06;
use Test::Shared::Fixture::Data::InfoBox::Company 0.06;
use Test::Shared::Fixture::Data::InfoBox::Person 0.06;
use Error::Pure qw(err);
use List::Util qw(none);
use Mo::utils qw(check_required);
use Readonly;

Readonly::Array our @TYPES => qw(address company person);

our $VERSION = 0.01;

sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Info box type.
	$self->{'type'} = 'address';

	# Process parameters.
	set_params($self, @params);

	check_required($self, 'type');
	if (none { $self->{'type'} eq $_ } @TYPES) {
		err "Parameter 'type' has bad value.",
			'Value', $self->{'type'},
			'Possible types', (join ', ', @TYPES),
		;
	}

	return $self;
}

sub random {
	my $self = shift;

	my $ret;
	if ($self->{'type'} eq 'address') {
		$ret = Test::Shared::Fixture::Data::InfoBox::Address->new;
	} elsif ($self->{'type'} eq 'company') {
		$ret = Test::Shared::Fixture::Data::InfoBox::Company->new;
	} else {
		$ret = Test::Shared::Fixture::Data::InfoBox::Person->new;
	}

	return $ret;
}

1;

__END__
