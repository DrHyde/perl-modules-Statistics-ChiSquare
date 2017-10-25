use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'Statistics::ChiSquare',
    META_MERGE => {
        license => 'open_source',
        resources => {
            repository => 'https://github.com/DrHyde/perl-modules-Statistics-ChiSquare',
            bugtracker => 'https://github.com/DrHyde/perl-modules-Statistics-ChiSquare/issues',
        }
    },
    VERSION_FROM => 'lib/Statistics/ChiSquare.pm', # finds $VERSION
    PREREQ_PM    => {
        'Test::More'        => 0.88, # done_testing
    }
);
