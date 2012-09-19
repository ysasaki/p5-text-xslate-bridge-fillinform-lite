package Text::Xslate::Bridge::FillInForm::Lite;

use 5.008_001;
use strict;
use warnings;
use base qw(Text::Xslate::Bridge);

use Text::Xslate qw(html_builder);
use HTML::FillInForm::Lite qw(fillinform);

our $VERSION = '0.01';

# copied from Text/Xslate/Manual/Cookbook.pod#Using_FillInForm
__PACKAGE__->bridge(
    function => { fillinform => html_builder( \&fillinform ) } );

1;
__END__

=head1 NAME

Text::Xslate::Bridge::FillInForm::Lite - HTML::FillInForm::Lite 'fillinform' for Text::Xslate

=head1 SYNOPSIS

    use Text::Xslate;
    my $tx = Text::Xslate->new(
        module => ['Text::Xslate::Bridge::FillInForm::Lite'],
    );

    my %vars = (
        q => { foo => "<filled value>" },
    );
    print $tx->render_string($tmpl, \%vars);

    # this is same as below
    use Text::Xslate;
    use HTML::FillInForm::Lite qw(fillinform);

    my $tx = Text::Xslate->new(
        function => { fillinform => html_builder(\&fillinform) },
    );

    # in your template
    : block form | fillinform($q) -> {
    <form action="">
        <input name="foo" type="" tyep="text" />
        <textarea id="" name="bar" rows="10" cols="30"></textarea>
    </form>
    : }

=head1 DESCRIPTION

Text::Xslate::Bridge::FillInForm::Lite provides fillinform function for Text::Xslate. You can set fillinform function using HTML::FillInForm::Lite by yourself.
But you cannot set user defined functions in some situation(e.g. Dancer::Template::Xslate is so)

=head1 SEE ALSO

L<Text::Xslate>, L<HTML::FillInForm::Lite>, L<Dancer::Template::Xslate>

=head1 AUTHOR

Yoshihiro Sasaki, E<lt>ysasaki at cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Yoshihiro Sasaki

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.

=cut
