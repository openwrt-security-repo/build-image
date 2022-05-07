#!/bin/bash

./scripts/feeds install nano

make package/nano/compile V=sc

make package/index
