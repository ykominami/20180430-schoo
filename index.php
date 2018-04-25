<?php
require __DIR__ . '/vendor/autoload.php';

$pd = new Parsedown();

echo $pd->text('Hello, **Deploy**.');
