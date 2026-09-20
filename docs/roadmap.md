# ROM road map

## Goal
Create a lightweight Pixel-style Android 16 ROM for Xiaomi Redmi Y3 (`onc`) with stable core functionality and a clean Material You-inspired interface.

## Target
- Android 16
- Snapdragon 632 / MSM8953
- 3GB RAM / 32GB storage
- Pixel-like UI and settings feel
- Works without excessive background services

## Phase 1: Device bring-up
- Get platform booting
- Port kernel and device tree
- Fix partition layout
- Integrate vendor blobs
- Verify boot and recovery

## Phase 2: Core hardware
- Audio
- Camera
- Wi-Fi
- Bluetooth
- GPS
- Sensors
- Charge state and thermal behavior
- Touchscreen and display calibration

## Phase 3: System stability
- SELinux fixes
- Memory tuning for 3GB RAM
- ART and ZRAM optimization
- UI smoothness and animation tuning
- Battery and sleep stability

## Phase 4: Pixel-like UI polish
- Pixel launcher behavior
- Material You theming
- Settings styling
- Notification/Quick Settings layout
- Color matching and icon polish

## Phase 5: Testing and bug triage
- Boot loops
- Camera issues
- Call/SMS/data failures
- Wi-Fi reset issues
- Fingerprint stability
- LTE/VoLTE problems

## Notes
This is a real porting project. We will use the `onc` device tree and Qualcomm MSM8953 base, then iterate with bug reports and fixes on actual hardware.
