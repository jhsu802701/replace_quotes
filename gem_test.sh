#!/bin/bash

gem uninstall replace_quotes

bin/setup

echo '-------'
echo 'rubocop'
rubocop
echo '----'
echo 'rake'
rake
