#!/bin/bash

gem uninstall replace_quotes

bin/setup

mkdir -p log/script
sh gem_test.sh 2>&1 | tee log/script/gem_test.log
sh code_test.sh 2>&1 | tee log/script/code_test.log
sh gem_install.sh 2>&1 | tee log/script/gem_install.log

echo 'Results are logged in:'
echo 'log/script/gem_test.log'
echo 'log/script/code_test.log'
echo 'log/script/gem_install.log'
