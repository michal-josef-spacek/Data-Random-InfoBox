package Data::Random::InfoBox::Address;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Data::Icon;
use Data::InfoBox::Item 0.03;
use Data::Text::Simple;
use Unicode::UTF8 qw(decode_utf8);

our $VERSION = 0.01;

sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

sub random {
	my $self = shift;

	my @ret = (
		# https://vdp.cuzk.cz/vdp/ruian/adresnimista/22350799
		Data::InfoBox::Item->new(
			'icon' => Data::Icon->new(
				'char' => decode_utf8('🏠'),
			),
			'text' => Data::Text::Simple->new(
				'text' => decode_utf8('Prvního pluku 211/5'),
			),
		),
		Data::InfoBox::Item->new(
			'text' => Data::Text::Simple->new(
				'text' => decode_utf8('Karlín'),
			),
		),
		Data::InfoBox::Item->new(
			'text' => Data::Text::Simple->new(
				'text' => '18600 Praha 8',
			),
		),
	);

	return @ret;
}

1;

__END__
