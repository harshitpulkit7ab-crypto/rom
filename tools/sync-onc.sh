#!/usr/bin/env bash
# Sync the pinned Redmi Y3 hardware sources into a full Lineage checkout.
# Run from the Android source root. This script does not flash or modify a phone.
set -euo pipefail

JOBS="${JOBS:-$(nproc --all)}"

if [[ ! -d .repo ]]; then
  echo "Run this from the root of a repo-initialized Android checkout." >&2
  exit 1
fi

mkdir -p .repo/local_manifests
curl -fL \
  https://raw.githubusercontent.com/harshitpulkit7ab-crypto/rom/android-16-onc/manifests/onc.xml \
  -o .repo/local_manifests/onc.xml

repo sync -c --no-clone-bundle --no-tags -j"${JOBS}"

printf '\nSynced projects:\n'
repo forall device/xiaomi/onclite vendor/xiaomi/onclite kernel/xiaomi/onclite -c \
  'printf "%s %s\\n" "$REPO_PATH" "$REPO_LREV"'
