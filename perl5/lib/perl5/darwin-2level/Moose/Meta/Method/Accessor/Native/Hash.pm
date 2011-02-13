#
# This file is part of MooseX-Attribute-Deflator
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package Moose::Meta::Method::Accessor::Native::Hash;
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::VERSION = '1.9902'; # TRIAL
}

use strict;
use warnings;

use Moose::Role;

sub _inline_check_var_is_valid_key {
    my $self = shift;
    my ($var) = @_;

    return (
        'if (!defined(' . $var . ')) {',
            $self->_inline_throw_error(
                '"The key passed to ' . $self->delegate_to_method
              . ' must be a defined value"',
            ) . ';',
        '}',
    );
}

no Moose::Role;

1;