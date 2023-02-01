<?php

function minify_json($json) {
    $json = json_encode(json_decode($json));
    $json = preg_replace('/([{,]+)(\s*)([^"]+?)\s*:/','$1"$3":',$json);
    $json = preg_replace('/(,)\s*}$/','}',$json);
    return $json;
}

