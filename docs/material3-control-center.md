# Material 3 and Control Center work plan

## Current status

- Android 16 target: planned through the framework manifest
- Material 3 theme: design/specification stage
- New Control Center: not yet implemented in source
- Hardware integration: uses the public `onclite` baseline
- Build and device testing: not completed

## Required source areas in a full Android checkout

```text
frameworks/base/packages/SystemUI/
packages/apps/Settings/
packages/apps/Launcher3/
frameworks/base/core/res/
frameworks/base/packages/overlays/
```

The exact paths can change between Android branches. Changes must be made against the checked-out Android 16 source, not guessed files committed to this small project repository.

## Safe implementation order

1. Build unmodified Android 16 with the `onclite` hardware tree.
2. Confirm SystemUI boots and core hardware works.
3. Add Material 3 resource overlays.
4. Implement the Control Center incrementally in SystemUI.
5. Add unit/UI tests and accessibility checks.
6. Build and test on the Redmi Y3.
7. Tune memory, animation, and blur only after measurements.

This repository intentionally documents the work instead of adding fake framework files that cannot compile outside a full Android source checkout.
