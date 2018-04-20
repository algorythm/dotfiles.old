#!/bin/bash

 git filter-branch --env-filter '
    read -p "Your old email"
 ' --tag-name-filter cat -- --branches --tags
