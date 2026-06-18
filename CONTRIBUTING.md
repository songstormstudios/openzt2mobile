# Contributing

Contributions should keep the public repository clean, buildable, and free of proprietary game material.

## Good Contributions

- Improvements to the desktop Java ME/Nokia compatibility layer.
- Launcher fixes that work with a user-supplied game JAR.
- Documentation for local reverse-engineering workflows.
- Clean-room tooling that analyzes a local JAR without committing generated output.
- Modding documentation or patch/build scripts that do not include original game material.

## Do Not Commit

- Game JARs or JAD files.
- Extracted game assets or class files.
- Decompiled game source.
- `javap` disassembly generated from the game.
- Decoded original strings or story text.
- Packaged desktop builds that include game content.
- Derived mod files made from original game assets.

## Local Checks

Before opening a PR, run:

```powershell
.\desktop\build.ps1
```

If your change affects runtime behavior, also test locally with a user-supplied JAR:

```powershell
.\desktop\run.ps1 -GameJar "path\to\Zoo_Tycoon_2_Mobile_v1.1.7.jar"
```

