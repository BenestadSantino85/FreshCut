#!/usr/bin/perl

use strict;
use warnings;

# Declare some global variables
my $subscription_date;
my $current_date;
my $subscription_frequency;
my $flower_delivery;

# Subscription Date
# Store the start date of the subscription

sub get_subscription_date {
	$subscription_date = shift;
	return $subscription_date;
}

# Current Date
# Store the current date of the subscription 

sub get_current_date {
	$current_date = shift;
	return $current_date;
}

# Subscription Frequency
# Store the frequency of the delivery of flower

sub get_subscription_frequency {
	$subscription_frequency = shift;
	return $subscription_frequency;
}

# Flower Delivery
# Subroutine to check for the flower delivery

sub check_for_flower_delivery {
	my $d1 = DateTime->from_epoch(epoch => $subscription_date);
	my $d2 = DateTime->from_epoch(epoch => $current_date);

	my $difference = $d2->delta_days($d1);
	if ($difference % $subscription_frequency == 0) {
		$flower_delivery = "Yes";
		print "Flower Delivery ==> $flower_delivery\n";
	} else {
		$flower_delivery = "No";
		print "Flower Delivery ==> $flower_delivery\n";
	}
	return $flower_delivery;
}

# Main Program
# Check for the flower delivery

my $subscription_date_epoch = get_subscription_date(1523796772);
my $current_date_epoch =  get_current_date(1524249817);
my $subscription_frequency = get_subscription_frequency(7);
check_for_flower_delivery();