use strict;
use warnings;

use Test::More;
END { done_testing }

use Statistics::ChiSquare;

note("data tests");
is(
    chisquare( 500, 500 ),
    "There's a >99% chance, and a <100% chance, that this data is random.",
    "There's a >99% chance, and a <100% chance, that this data is random."
);
is(
    chisquare( map { 500 } 1 .. 28 ),
    "There's a >99% chance, and a <100% chance, that this data is random.",
    "There's a >99% chance, and a <100% chance, that this data is random."
);
is(
    chisquare( 1 .. 28 ),
    "There's a <1% chance that this data is random.",
    "There's a <1% chance that this data is random."
);
is(
    chisquare([1,4,2,6,5,5]),
    "There's a >30% chance, and a <50% chance, that this data is random.",
    "There's a >30% chance, and a <50% chance, that this data is random."
);

note("error tests");
is(
    chisquare( 1 .. 32 ),
    "I can't handle 32 choices without a better table.",
    "I can't handle 32 choices without a better table."
);
is(
    chisquare(1),
    "Not enough data!",
    "Not enough data!"
);
is(
    chisquare(),
    "There's no data!",
    "There's no data!"
);
is(
    chisquare(qw(elephant grape)),
    "Malformed data!",
    "Malformed data!"
);
is(
    chisquare([1,4,2,6,5,5], 4),
    "Malformed data!",
    "Malformed data!"
);
