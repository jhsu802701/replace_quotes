#!/bin/bash

gem uninstall replace_quotes

bin/setup

echo '-------'
echo 'rubocop'
rubocop
echo '-----------'
echo 'sandi_meter'
sandi_meter
echo '----'
echo 'rake'
rake
