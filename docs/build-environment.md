# Build environment

The ROM must be built on a dedicated Linux x86_64 host. Recommended setup is Ubuntu 22.04 LTS, at least 32 GB RAM, and 250 GB free SSD space.

Install the standard Android build dependencies from the selected LineageOS branch, then install Repo and Java 17. The Android tree supplies the Clang toolchain used for the kernel and userspace.

The preparation scripts in `tools/` are intentionally non-destructive:

```bash
chmod +x tools/prepare-onc.sh tools/build-onc.sh
./tools/prepare-onc.sh
```

After the source and legally obtained proprietary files are present:

```bash
./tools/build-onc.sh
```

The build helper does not flash a phone. Test builds must be validated with logs and recovery backups before any installation.
