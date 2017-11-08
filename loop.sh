#!/usr/bin/env bash
list=$(ls *.eps)
for a in $list do
echo ps2pdf $a
done
