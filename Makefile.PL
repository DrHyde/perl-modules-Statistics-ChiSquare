use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'Statistics::ChiSquare',
    META_MERGE => {
        license => 'other',
        resources => {
            repository => 'https://github.com/DrHyde/perl-modules-Statistics-ChiSquare',
            bugtracker => 'https://github.com/DrHyde/perl-modules-Statistics-ChiSquare/issues',
        }
    },
    'VERSION_FROM' => 'lib/Statistics/ChiSquare.pm', # finds $VERSION
);
