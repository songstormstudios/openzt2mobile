<img width="673" height="444" alt="image" src="https://github.com/user-attachments/assets/f324bd59-2ee5-46d3-871f-2362291ad147" />

# OpenZT2Mobile

OpenZT2Mobile is an open desktop compatibility layer and modding/research toolkit for the original Zoo Tycoon 2 Mobile Java ME release.

The public repository is intended to contain clean project code: the desktop Java ME/Nokia API shim, launcher, local build scripts, documentation, and modding notes. It intentionally does not include the original game JAR, extracted assets, class files, decompiled source, disassembly, or repackaged builds.

## Project Boundary

Bring your own legally obtained copy of the game JAR. The default local filename used by the scripts is:

```text
Zoo_Tycoon_2_Mobile_v1.1.7.jar
```

You can also point the scripts at a different path with `-GameJar` or the `ZT_MOBILE_JAR` environment variable.

The open-source license in this repository applies only to repository-authored files. Zoo Tycoon, Zoo Tycoon 2, original game code, original game assets, and related trademarks belong to their respective owners.

## Build

The compatibility layer can be compiled by itself:

```powershell
.\desktop\build.ps1
```

This only builds the open shim classes into `desktop/build/classes`.

## Run Locally

Place your game JAR at the repository root using the default filename, then run:

```powershell
.\desktop\run.ps1
```

Or pass an explicit path:

```powershell
.\desktop\run.ps1 -GameJar "D:\Games\Zoo_Tycoon_2_Mobile_v1.1.7.jar"
```

Saves are written under `%USERPROFILE%\Saved Games\ZT2Mobile\rms` unless `-Dztmobile.rmsdir=...` is supplied to the JVM.

