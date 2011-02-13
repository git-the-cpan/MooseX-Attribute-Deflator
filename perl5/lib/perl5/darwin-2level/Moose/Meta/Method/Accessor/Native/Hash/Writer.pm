#
# This file is part of MooseX-Attribute-Deflator
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package Moose::Meta::Method::Accessor::Native::Hash::Writer;
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::Writer::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::Writer::VERSION = '1.9902'; # TRIAL
}

use strict;
use warnings;

use Class::MOP::MiniTrait;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Writer' => {
        -excludes => ['_inline_coerce_new_values'],
    },
    'Moose::Meta::Method::Accessor::Native::Hash',
    'Moose::Meta::Method::Accessor::Native::Collection';

sub _new_values { '@values' }

sub _copy_old_value {
    my $self = shift;
    my ($slot_access) = @_;

    return '{ %{ (' . $slot_access . ') } }';
}

no Moose::Role;

1;