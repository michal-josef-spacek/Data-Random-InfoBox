package Data::Random::InfoBox;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Data::InfoBox;
use Data::Random::InfoBox::Address;
use Data::Random::InfoBox::Company;
use Data::Random::InfoBox::Person;
use Error::Pure qw(err);
use List::Util qw(none);
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

	if (! defined $self->{'type'}) {
		err "Parameter 'type' is required.";
	}
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

	my @items;
	if ($self->{'type'} eq 'address') {
		@items = Data::Random::InfoBox::Address->new->random;
	} elsif ($self->{'type'} eq 'company') {
		@items = Data::Random::InfoBox::Company->new->random;
	} elsif ($self->{'type'} eq 'person') {
		@items = Data::Random::InfoBox::Person->new->random;
	}
	my $ret = Data::InfoBox->new(
		'items' => \@items,
	);

	return $ret;
}

1;

__END__
