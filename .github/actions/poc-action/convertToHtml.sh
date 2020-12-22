#!/bin/sh -l

# You could also add the option: -c style.css
pandoc -f markdown -t html5 -o /termsAndConditions.html /termsAndConditions.md
