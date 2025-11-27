#!/usr/bin/env nu

let pagesize_b = (sysctl -n hw.pagesize | into int);
let mem_pages = (vm_stat
  | lines
  | parse "{metric}: {value}"
  | where metric in [
    "Pages active",
    "Pages wired down",
    "Pages occupied by compressor",
  ]
  | get value
  | str replace -a "." ""
  | into int
  | math sum
);

$mem_pages * $pagesize_b | into filesize
