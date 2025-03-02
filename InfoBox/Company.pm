package Data::Random::InfoBox::Company;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Data::Icon;
use Data::InfoBox::Item 0.03;
use Data::Random::InfoBox::Address;
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
		Data::InfoBox::Item->new(
			'text' => Data::Text::Simple->new(
				'text' => 'Volvox Globator',
			),
			'url' => 'https://volvox.cz',
		),
		Data::Random::InfoBox::Address->new->random,
		Data::InfoBox::Item->new(
			'icon' => Data::Icon->new(
				'char' => decode_utf8('✉'),
			),
			'text' => Data::Text::Simple->new(
				'text' => 'volvox@volvox.cz',
			),
			'url' => 'mailto:volvox@volvox.cz',
		),
		Data::InfoBox::Item->new(
			'icon' => Data::Icon->new(
				'char' => decode_utf8('☎'),
			),
			'text' => Data::Text::Simple->new(
				'text' => '+420739639506',
			),
			'url' => 'tel:+420739639506',
		),
	);

	return @ret;
}

1;

__END__
