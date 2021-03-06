use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name        => 'Beer::Tools',
	license            => 'artistic_2',
	dist_author        => q{Chris Moewes <chris.moewees@gmail.com>},
	dist_version_from  => 'lib/Beer/Tools.pm',
	release_status     => 'stable',
	configure_requires => {
		'Module::Build' => 0,
	},
	build_requires => {
		'Test::More' => 0,
	},
	requires => {

		'Moose'            => 0,
		'Params::Validate' => 0,

	},
	add_to_cleanup     => ['Beer-Tools-*'],
	create_makefile_pl => 'traditional',
);

$builder->create_build_script();
