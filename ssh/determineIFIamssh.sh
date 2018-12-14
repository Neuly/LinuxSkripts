#!/bin/bash
if [[ $(who am i) =~ \([0-9\.]+\)$ ]]; then echo SSH; else echo no; fi

