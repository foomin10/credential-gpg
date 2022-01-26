# credential-gpg <!-- omit in toc -->

## Table of Contents <!-- omit in toc -->

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)

## Features


## Requirements

- getoptions ([link](https://github.com/ko1nksm/getoptions))

## Installation

<!-- **Download prebuild shell scripts** from [releases](https://github.com/foomin10/credential-gpg/releases).

```sh
wget https://github.com/foomin10/credential-gpg/releases/latest/download/credential-gpg -O $HOME/bin/credential-gpg
chmod +x $HOME/bin/credential-gpg
```

Or build and install it yourself. -->

If you want to install in "/usr/local/bin", run below.

Run following, and the script will install into "/usr/local/bin".

```sh
git clone https://github.com/foomin10/credential-gpg.git
cd credential-gpg
make
make install
```

Or run following if you want to install into "$HOME/bin".

```sh
git clone https://github.com/foomin10/credential-gpg.git
cd credential-gpg
make
make install PREFIX=$HOME
```

## Usage

