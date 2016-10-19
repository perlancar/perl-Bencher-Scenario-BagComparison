package Bencher::Scenario::BagComparison;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark bag comparison',
    participants => [
        {
            module => 'Test::Deep', # Test::Deep::NoTest is useless without importing
            code_template=>'state $bag = Test::Deep::bag(@{<bag>}); Test::Deep::eq_deeply(<array>, $bag)',
        },
    ],
    datasets => [
        {name=>'elems=10num' , args=>{array=>[1..10] , bag=>[reverse 1..10] }},
        {name=>'elems=100num', args=>{array=>[1..100], bag=>[reverse 1..100]}},
        {name=>'elems=200num', args=>{array=>[1..200], bag=>[reverse 1..200]}},
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION

TODO: find another bag comparison module.

TODO: compare complex elements.

TODO: compare with Data::Compare + sorting.


=head1 SEE ALSO

L<Bencher::Scenario::SetComparison>
