#!/usr/bin/env bash
# Build the public onclite product from a full Lineage checkout.
# Run from the Android source root. This script never flashes a phone.
set -euo pipefail

JOBS="${JOBS:-$(nproc --all)}"

if [[ ! -f build/envsetup.sh ]]; then
  echo "Run this from the root of a full Android source checkout." >&2
  exit 1
fi
if [[ ! -d device/xiaomi/onclite ]]; then
  echo "Missing device/xiaomi/onclite; run tools/sync-onc.sh first." >&2
  exit 1
fi
if [[ ! -d vendor/xiaomi/onclite ]]; then
  echo "Missing vendor/xiaomi/onclite; sync the vendor tree and extract any required firmware." >&2
  exit 1
fi

source build/envsetup.sh
lunch lineage_onclite-userdebug
m bacon -j"${JOBS}"
