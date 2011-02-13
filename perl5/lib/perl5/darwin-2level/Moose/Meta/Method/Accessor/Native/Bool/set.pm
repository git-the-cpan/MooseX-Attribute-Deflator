#
# This file is part of MooseX-Attribute-Deflator
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package Moose::Meta::Method::Accessor::Native::Bool::set;
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Bool::set::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Bool::set::VERSION = '1.9902'; # TRIAL
}

use strict;
use warnings;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Writer' => {
    -excludes => [
        qw(
            _maximum_arguments
            _inline_optimized_set_new_value
            )
    ]
    };

sub _maximum_arguments { 0 }

sub _potential_value { 1 }

sub _inline_optimized_set_new_value {
    my $self = shift;
    my ($inv, $new, $slot_access) = @_;

    return $slot_access . ' = 1;';
}

no Moose::Role;

1;