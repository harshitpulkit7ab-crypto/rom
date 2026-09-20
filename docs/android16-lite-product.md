# Android 16 Lite target for Redmi Y3

This project targets a **lite Android 16 ROM**, not a full Pixel feature clone.

## Required user experience

- Android 16 framework base
- New Android 16-style Quick Settings / Control Center layout
- Material 3 / Material You dynamic color support
- Lightweight SystemUI suitable for 3 GB RAM
- Redmi Y3 hardware support inherited from the `onclite` device tree
- No unnecessary Pixel-only services or bundled proprietary Google applications

## Scope decision

The ROM should preserve the Android 16 framework and hardware compatibility while limiting extra features and background services. “Lite” means fewer bundled applications and reduced customization—not an older Android framework.

## Control Center implementation

The new Control Center requires source changes in SystemUI. It cannot be enabled safely with a system property alone. The implementation should:

1. Use Android 16 SystemUI as the base.
2. Keep Quick Settings, brightness, media, Internet, Bluetooth, and battery controls functional.
3. Use responsive layouts for the Redmi Y3 display size.
4. Avoid expensive blur and excessive animation on the Snapdragon 632.
5. Add tests for rotation, dark mode, accessibility, touch targets, and low-memory behavior.

Do not copy proprietary Pixel SystemUI binaries.

## Material 3 implementation

Use the open-source Android 16 Material 3-compatible resources and dynamic color system. The theme should support:

- Light and dark themes
- Wallpaper-derived dynamic colors when supported
- Monet-style system accent colors
- Material 3 typography and shape tokens
- Contrast and accessibility requirements
- Consistent colors across Settings, SystemUI, Launcher, and notifications

Material 3 is primarily an app/resource design system; it requires resource overlays and source changes in the relevant Android applications. It is not equivalent to adding a single launcher APK.

## Performance policy

No tuning values should be added until a real build is measured on the 3 GB device. Avoid unsafe overclocking, disabling thermal protection, or aggressive LMKD settings. Performance changes must be validated against battery life, suspend, camera, calls, and thermal stability.
