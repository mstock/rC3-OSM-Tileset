use 5.010001;

package rC3::OSM::Tileset::Color {

	# ABSTRACT: Color declarations from the OpenStreetMap carto style

	use strict;
	use warnings;

	use Exporter 'import';
	our @EXPORT_OK = qw(COLOR COLOR_NAMES);

	my %color = (
		amenity_brown       => '#734a08',
		gastronomy_icon     => '#C77400',
		man_made_icon       => '#666666',
		transportation_icon => '#0092da',
		health_color        => '#BF0000',
		airtransport        => '#8461C4',
		marina_text         => '#576ddf',
		religious_icon      => '#000000',
		barrier_icon        => '#3f3f3f',
		leisure_green       => '#0d8517',
		landform_color      => '#d08f55',
		office              => '#4863A0',
		placenames          => '#222222',
		shop_icon           => '#ac39ac',
		water_text          => '#4d80b3',
	);
	$color{culture}            = $color{amenity_brown};
	$color{public_service}     = $color{amenity_brown};
	$color{accommodation_icon} = $color{transportation_icon};
	$color{memorials}          = $color{amenity_brown};
	$color{advertising_grey}   = $color{man_made_icon};

	my @color_names = sort keys %color;

	sub COLOR {
		return %color;
	}

	sub COLOR_NAMES {
		return @color_names;
	}
};
