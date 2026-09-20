#!/usr/bin/env bash
# Build helper for the prepared checkout. This is intentionally conservative:
# it does not flash anything and it stops before pretending hardware is tested.
set -euo pipefail

source build/envsetup.sh
lunch lineage_onclite-userdebug
m bacon -j"${JOBS:-$(nproc --all)}"
