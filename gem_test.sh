#!/bin/bash

gem uninstall replace_quotes

bin/setup
rake
