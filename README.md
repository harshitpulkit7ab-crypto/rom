# Pixel-like Android 16 Lite ROM for Redmi Y3 (`onc`)

This repository prepares an **Android 16 Lite** target for the Redmi Y3. The goal is a lightweight Android 16 experience with a new Control Center and Material 3 dynamic theming, while retaining the public `onclite` hardware baseline.

The project is not a complete source mirror of Android. The full framework checkout must be obtained with Repo using the manifest under `manifests/`, then the device, kernel, and vendor projects must be synced.

See:

- `docs/android16-lite-product.md`
- `docs/material3-control-center.md`
- `docs/source-layout.md`
- `docs/status.md`

No flashable image is currently produced by this repository. Framework UI changes must be implemented and compiled inside the full Android 16 checkout, then tested on a real Redmi Y3.