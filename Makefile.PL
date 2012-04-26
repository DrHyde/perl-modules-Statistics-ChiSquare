use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'	=> 'Statistics::ChiSquare',
    META_MERGE => {
        license => 'other',
        resource => {
	    repository => 'https://github.com/DrHyde/perl-modules-Statistics-ChiSquare'
        }
    },
    'VERSION_FROM' => 'lib/Statistics/ChiSquare.pm', # finds $VERSION
);
