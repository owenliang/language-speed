<?php
$result = 0.0;

for ($i = 1; $i < 1000000000; ++$i) {
    $result += 1.0 / $i;
}