#!/usr/bin/env bash
# Prepare a Lineage/AOSP checkout for Redmi Y3 onc.
# Run from the root of a full Android source checkout.
set -euo pipefail

DEVICE="${1:-onc}"
JOBS="${JOBS:-$(nproc --all)}"

if [[ "${DEVICE}" != "onc" ]]; then
  echo "Usage: $0 [onc]" >&2
  exit 2
fi

if [[ ! -d .repo ]]; then
  echo "Run this from the root of a repo-initialized Android checkout." >&2
  exit 1
fi

mkdir -p .repo/local_manifests
curl -fsSL \
  https://raw.githubusercontent.com/harshitpulkit7ab-crypto/rom/android-16-onc/manifests/onc.xml \
  -o .repo/local_manifests/onc.xml

repo sync -c --no-clone-bundle --no-tags -j"${JOBS}"

# The upstream device tree's extraction script is used only with an attached,
# authorized device or a legally obtained stock dump. Proprietary files are not
# downloaded or committed by this script.
if [[ -x device/xiaomi/onclite/extract-files.sh ]]; then
  echo "Source selected. To extract blobs from an authorized source:"
  echo "  device/xiaomi/onclite/extract-files.sh"
else
  echo "Device tree was not synced; inspect .repo/local_manifests/onc.xml."
fi

echo "Preparation complete for ${DEVICE}."
