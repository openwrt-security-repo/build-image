# build-image

This repo is created to generate docker images, for each board/version combination, to have all dependency already installed and compiled, for building packages.

## Table of contents

<!-- vim-markdown-toc GFM -->

* [Usage](#usage)
* [Using image](#using-image)
* [Authors](#authors)

<!-- vim-markdown-toc -->

## Usage

```bash
bash build.sh
```

## Using image

```bash
docker run --rm -ti builder-openwrt:wifi_pineapple-v21.02.1 /bin/bash
```

## Authors

* [nemanjan00](https://github.com/nemanjan00)
