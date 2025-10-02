#!/bin/bash

# Download RoadRunner binary for the current system
# This script helps when GitHub API rate limits prevent automatic download

VERSION="2024.2.1"
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

# Convert architecture names
if [ "$ARCH" = "x86_64" ]; then
    ARCH="amd64"
elif [ "$ARCH" = "aarch64" ]; then
    ARCH="arm64"
fi

echo "Downloading RoadRunner v${VERSION} for ${OS}-${ARCH}..."

DOWNLOAD_URL="https://github.com/roadrunner-server/roadrunner/releases/download/v${VERSION}/roadrunner-${VERSION}-${OS}-${ARCH}.tar.gz"

echo "Download URL: ${DOWNLOAD_URL}"

# Download and extract
wget -q -O rr.tar.gz "${DOWNLOAD_URL}" || {
    echo "Failed to download RoadRunner binary"
    exit 1
}

tar -xzf rr.tar.gz "roadrunner-${VERSION}-${OS}-${ARCH}/rr" || {
    echo "Failed to extract RoadRunner binary"
    exit 1
}

mv "roadrunner-${VERSION}-${OS}-${ARCH}/rr" ./rr
chmod +x rr
rm -rf rr.tar.gz "roadrunner-${VERSION}-${OS}-${ARCH}"

echo "RoadRunner binary downloaded successfully!"
./rr --version
