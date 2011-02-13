#
# This file is part of MooseX-Attribute-Deflator
#
# This software is Copyright (c) 2011 by Moritz Onken.
#
# This is free software, licensed under:
#
#   The (three-clause) BSD License
#
package Moose::Error::Confess;
BEGIN {
  $Moose::Error::Confess::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $Moose::Error::Confess::VERSION = '1.9902'; # TRIAL
}

use strict;
use warnings;

use base qw(Moose::Error::Default);

sub new {
    my ( $self, @args ) = @_;
    $self->create_error_confess(@args);
}

1;

# ABSTRACT: Prefer C<confess>



=pod

=head1 NAME

Moose::Error::Confess - Prefer C<confess>

=head1 VERSION

version 1.9902

=head1 SYNOPSIS

    # Metaclass definition must come before Moose is used.
    use metaclass (
        metaclass => 'Moose::Meta::Class',
        error_class => 'Moose::Error::Confess',
    );
    use Moose;
    # ...

=head1 DESCRIPTION

This error class uses L<Carp/confess> to raise errors generated in your
metaclass.

=head1 AUTHOR

Stevan Little <stevan@iinteractive.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Infinity Interactive, Inc..

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__



