use List::Util qw/max min/;

<>=~/ .* /;
# print 3.141592653.589*(($`+$&+$')**2-(($x=$`-$&-$')>0&&$x**2)-(($y=$&-$`-$')>0&&$y**2)-(($z=$'-$`-$&)>0&&$z**2)),$/


@a=($`,$&,$');
print max(@a);

# print $`+$&+$',$/
