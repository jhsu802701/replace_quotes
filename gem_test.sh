#!/bin/bash

gem uninstall replace_quotes

bin/setup

echo '----'
echo 'rake'
rake
