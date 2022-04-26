#!/bin/bash

git_hook_path=.git/hooks/pre-commit

text="#!/bin/sh

black .
flake8"

echo "$text" > $git_hook_path

chmod +x $git_hook_path
