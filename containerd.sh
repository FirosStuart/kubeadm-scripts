#!/bin/sh

set -e
wget https://github.com/containerd/containerd/releases/download/v1.6.1/cri-containerd-cni-1.6.1-linux-amd64.tar.gz
sudo tar --no-overwrite-dir -C / -xzf cri-containerd-cni-1.6.1-linux-amd64.tar.gz
sudo systemctl daemon-reload
sudo systemctl enable --now containerd
containerd config default > /etc/containerd/config.toml
