package PitInfo;

use strict;
use warnings;
use Devel::ArgNames;
use Config::Pit;

sub new {
	my $proto = shift;
	my $class = ref $proto || $proto;
	my $self = {};
	bless $self, $class;
	return $self;
}

sub pitinfo {
	my $self = shift;
	my $setting = shift;
	my $pit_account = shift;
	my @arg_name =  arg_names();

	splice (@arg_name, 0, 3 );
	map { s/\$//} @arg_name;

	if ($setting ne 'default'	){
		Config::Pit::switch($setting);
	}

	my	$pit_info =  Config::Pit::pit_get($pit_account);

	if ($setting ne 'default'	){
		Config::Pit::switch;
	}
	my @res;
	foreach my $var (@arg_name) {
		push (@res , $pit_info->{$var});
	}
	return @res;
}
1;

