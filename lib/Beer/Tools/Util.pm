package Beer::Tools::Util;

use Moose;


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Beer::Tools;

    my $foo = Beer::Tools->new();
    ...
    
=head1 SUBROUTINES/METHODS

=head2 _sg_to_plato

 my $sg = Beer::Tools::Util->_sg_to_plato(1.040);

=head2 _plato_to_sg

 my $plato = Beer::Tools::Util->_plato_to_sg(20);

=head2 function1



=cut

    
    
sub _sg_to_plato {
	my $self = shift;
	my $sg   = shift;

	return sprintf( '%.1f', ( ( ( 182.4601 * $sg - 775.6821 ) * $sg + 1262.7794 ) * $sg - 669.5622 ) );
}

sub _plato_to_sg {
	my $self  = shift;
	my $plato = shift;

	return sprintf( '%.3f', ( 1 + ( $plato / ( 258.6 - ( ( $plato / 258.2 ) * 227.1 ) ) ) ) );

}

sub _plato_to_sg2 {
	my $self  = shift;
	my $plato = shift;

	return sprintf( '%.3f', 259 / ( 259 - $plato ) );

}

1; # End of Beer::Tools
