#!/bin/bash

if [[ $1 == 2 ]]; then
	# on python 2.7, use latest 3.x only
	pip install fonttools==3.44.0
	pip install zopfli
	pip install brotli
else
	pip3 install fonttools
	pip3 install zopfli
	pip3 install brotli
fi
