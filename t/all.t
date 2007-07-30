use Test;
BEGIN { plan tests => 4 };
use Statistics::ChiSquare;
ok(1);

ok(Statistics::ChiSquare::chisquare(500,500),
   "There's a >99% chance, and a <100% chance, that this data is random.");
ok(Statistics::ChiSquare::chisquare(map { 500 } 1..28),
   "There's a >99% chance, and a <100% chance, that this data is random.");
ok(Statistics::ChiSquare::chisquare(1..28),
   "There's a <1% chance that this data is random.");
