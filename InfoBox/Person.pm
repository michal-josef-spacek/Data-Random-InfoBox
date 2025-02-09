package Data::Random::InfoBox::Person;

use strict;
use warnings;

use Data::Icon;
use Data::InfoBox::Item 0.03;
use Unicode::UTF8 qw(decode_utf8);

our $VERSION = 0.01;

sub new {
	my $class = shift;

	# Create object.
	my $self = bless {}, $class;

	return $self;
}

sub random {
	my $self = shift;

	my @ret = (
		Data::InfoBox::Item->new(
			'icon' => Data::Icon->new(
				'char' => decode_utf8('🧍'),
			),
			'text' => Data::Text::Simple->new(
				'text' => decode_utf8('Michal Josef Špaček'),
			),
		),
		Data::InfoBox::Item->new(
			'icon' => Data::Icon->new(
				'char' => decode_utf8('☎'),
			),
			'text' => Data::Text::Simple->new(
				'text' => '+420777623160',
			),
		),
	);

	return @ret;
}

1;

__END__
