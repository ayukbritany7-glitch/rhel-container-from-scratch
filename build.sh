#!/usr/bin/env bash
set -e

echo "➡️ Initializing an empty scratch image..."
container=$(buildah from scratch)

echo "➡️ Mounting the container filesystem..."
container_root=$(buildah mount $container)

echo "➡️ Installing minimal RHEL packages into the container..."
# Installs coreutils, bash, and Red Hat's minimal runtime base
sudo dnf install --installroot=$container_root \
    --releasever=9 \
    --nodocs \
    --setopt=install_weak_deps=False \
    bash coreutils bash coreutils crypto-policies -y

echo "➡️ Configuring container environment and Entrypoint..."
buildah config --workingdir /root $container
buildah config --env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin $container
buildah config --entrypoint '["/bin/bash"]' $container

echo "➡️ Saving and committing the image as 'my-rhel-scratch'..."
buildah unmount $container
buildah commit $container my-rhel-scratch

echo "✅ Success! Test your image with: podman run --rm -it my-rhel-scratch"

