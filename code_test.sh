#!/bin/bash

gem uninstall replace_quotes

bin/setup

echo '----------'
echo 'rm -rf tmp'
rm -rf tmp

echo '-------'
echo 'rubocop'
rubocop

echo '-----------'
echo 'sandi_meter'
sandi_meter

echo '------------'
echo 'bundle-audit'
bundle-audit

echo '----------'
echo 'gemsurance'
gemsurance
