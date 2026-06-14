# 🖖 「上古科幻」Warp Core LCARS: The Universal Starfleet Interface

> "Computer, load OS/2 Warp VIO subsystem." 
> The year is 1994, but your terminal is in the 24th Century.

**Warp-Core-LCARS** is an impossibly hardcore project that bridges the gap between IBM's legendary **OS/2 Warp** operating system, modern POSIX environments, and the **LCARS** (Library Computer Access/Retrieval System) interface from Star Trek. 

Written purely in **REXX** for native OS/2 compatibility, and utilizing **Node.js** for modern systems, this is not just a theme—it's a fully compatible command shell wrapper that runs natively across space and time.

![Warp-Core-LCARS Terminal Demo](https://via.placeholder.com/800x400/000000/FF9900.png?text=LCARS+TERMINAL+OVERRIDE+ENGAGED)

## 🌌 Universal Operating System Compatibility

Unlike ordinary terminal frameworks that restrict you to modern UNIX-like environments, **Warp-Core-LCARS** uses a proprietary Cross-Dimensional Polyglot Architecture™ (powered by Node.js for modern systems and native REXX for legacy systems). 

| Operating System | Status | Subsystem / Engine |
| :--- | :---: | :--- |
| **Android** (Termux) | ✅ | Node.js Universal CLI |
| **FreeBSD** | ✅ | Node.js Universal CLI |
| **LCARS** (Starfleet Standard) | ✅ | Natively Integrated 🛸 |
| **Linux** | ✅ | Node.js Universal CLI |
| **macOS** | ✅ | Node.js Universal CLI |
| **OS/2 Warp** (3.0 / 4.0 / ArcaOS) | ✅ | Native VIO & REXX Scripts 💾 |
| **Windows** (WSL2 / PowerShell) | ✅ | Node.js Universal CLI |

### 🧠 How is this possible?
Our installation script dynamically probes your kernel. 
* If it detects a modern POSIX or Windows environment, it compiles a lightweight Node.js wrapper that hooks into Zsh/Bash/PowerShell, rendering the LCARS interface via modern ANSI escape sequences.
* If it detects an `IBM OS/2` kernel, it bypasses the modern stack entirely and drops directly into our hand-crafted, hardware-level REXX scripts via the `cmd.exe` VIO subsystem.

## 📦 Installation (The 1990s Way for OS/2)
1. Download the `WARPCORE.ZIP` release file.
2. Unzip into your HPFS drive (e.g., `C:\LCARS`).
3. Open your OS/2 Warp command prompt and run:
   ```cmd
   [C:\] cd LCARS
   [C:\LCARS] pmrexx install.cmd
