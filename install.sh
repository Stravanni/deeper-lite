#!/bin/bash
set -e
cd torch
./install-deps
./install.sh
. /root/torch/install/bin/torch-activate
luarocks install csvigo
luarocks install dp

#GloVe embeddings
wget -O glove/glove.840B.300d.zip http://nlp.stanford.edu/data/glove.840B.300d.zip
cd glove
unzip glove.840B.300d.zip
