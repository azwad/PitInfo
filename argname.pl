#!/usr/bin/perl
use PitInfo;
use strict;
use feature qw( say );


my $setting = 'default';

my $pit_account  = 'twitter.toshi0104';

my ($consumer_key, $consumer_secret, $access_token, $access_token_secret);

($consumer_secret, $access_token, $access_token_secret) = PitInfo->pitinfo(
	$setting, $pit_account,
	$consumer_secret, $access_token, $access_token_secret
);

say $consumer_key;
say $consumer_secret;
say $access_token;
say $access_token_secret;


$pit_account = 'GoogleSimpleAPIAccess';

my ($user_id, $api_key);

($user_id, $api_key) = PitInfo->pitinfo(
	$setting, $pit_account,
	$user_id, $api_key
);

say $user_id;
say $api_key;

