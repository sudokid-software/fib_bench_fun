// donutX3
//I want to end myself
function fib_yield(int $count)
{
    $one = 0;
    $two = 1;
    $tmp = null;
    while ($count > 0) {
        yield $one;
        $tmp = $two;
        $two += $one;
        $one = $tmp;

        $count--;
    }
}

foreach (fib_yield(90) as $i) {
    echo str_pad(sprintf('%.0F', $i) ,20," ", STR_PAD_LEFT) . "\n";
}
