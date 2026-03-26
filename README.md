# SANDY Installation and Run Tutorial (Linux)

This repository provides a minimal tutorial on how to install and run **SANDY** on a Linux machine. It assumes that major system dependencies such as **Git** and **Python** are already installed.

---

## Where to run

This repository can be run on a **GitHub Codespaces prebuild** to ensure consistent, reproducible development across all systems.

1. Click **Code** (top-right green or blue box) → **Open with Codespaces** → **New Codespace**.
2. Wait a few seconds for the prebuild to load.
3. Start working immediately.

---

## What to run
The tutorial includes three helper scripts:

- `INSTALL_NJOY.sh` – downloads, configures, and builds NJOY2016.
- `INSTALL_SANDY.sh` – installs SANDY via pip.
- `RUN_SANDY.sh` – runs example SANDY sampling workflows.

---

```bash
# 1. Install NJOY2016
bash INSTALL_NJOY.sh

# 2. Install SANDY
bash INSTALL_SANDY.sh

# 3. Run SANDY Sampling Examples
bash RUN_SANDY.sh
```

---

## Notes
- Ensure that `python` and `pip` point to the same environment.
- If the NJOY path changes, update the `NJOY` variable inside `RUN_SANDY.sh`.
