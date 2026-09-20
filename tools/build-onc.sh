#!/usr/bin/env bash
# Build helper. It does not flash a phone or claim hardware validation.
set -euo pipefail

if [[ ! -f build/envsetup.sh ]]; then
  echo "Run this from the root of a full Android source checkout." >&2
  exit 1
fi

source build/envsetup.sh
lunch lineage_onclite-userdebug
m bacon -j"${JOBS:-$(nproc --all)}"
