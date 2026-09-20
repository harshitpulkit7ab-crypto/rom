#!/usr/bin/env bash
# Prepare a full Lineage/AOSP checkout for Redmi Y3 onc/onclite.
# Run from the root of a full Android source checkout.
set -euo pipefail

JOBS="${JOBS:-$(nproc --all)}"

if [[ ! -d .repo ]]; then
  echo "Run this from the root of a repo-initialized Android checkout." >&2
  exit 1
fi

mkdir -p .repo/local_manifests
curl -fsSL \
  https://raw.githubusercontent.com/harshitpulkit7ab-crypto/rom/android-16-onc/manifests/onc.xml \
  -o .repo/local_manifests/onc.xml
repo sync -c --no-clone-bundle --no-tags -j"${JOBS}"

if [[ -x device/xiaomi/onclite/extract-files.sh ]]; then
  echo "Hardware source synced. Extract blobs only from an authorized compatible source:"
  echo "  device/xiaomi/onclite/extract-files.sh"
else
  echo "device/xiaomi/onclite was not synced; inspect the manifest and repo output."
  exit 1
fi

echo "Preparation complete. No device was flashed."
