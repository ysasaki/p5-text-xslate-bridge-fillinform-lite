use 5.008_001;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Text::Xslate::Bridge::FillInForm::Lite',
    VERSION_FROM => 'lib/Text/Xslate/Bridge/FillInForm/Lite.pm',
    PREREQ_PM    => {
        'Text::Xslate'           => 0,
        'HTML::FillInForm::Lite' => 0,
    },
    (   $] >= 5.005
        ? ( ABSTRACT_FROM => 'lib/Text/Xslate/Bridge/FillInForm/Lite.pm',
            AUTHOR        => 'Yoshihiro Sasaki <ysasaki at cpan.org>'
            )
        : ()
    ),
);
