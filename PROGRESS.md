# PROGRESS.md

## 2026-06-14

### Installation Study

- Downloaded and inspected the repository files.
- Read `README.md`, `install.cmd`, `warpcore.cmd`, `test-router.js`, and `Node.js`.
- Confirmed `test-router.js` runs with Node.js on Windows/Codex.
- Confirmed npm registry did not contain a published `warp-core-lcars` package during verification.

### Local Validation

- Ran `test-router.js` with Codex bundled Node v24.14.0.
- Verified LCARS ANSI output on Windows.

### Package Metadata

- Added `package.json`.
- Bound the `warpcore` command to `./test-router.js` through `bin`.
- Verified `package.json` parses and `bin.warpcore` matches the intended entrypoint.
- Pushed `package.json` and project memory files to GitHub `main` in commit `0a5a70f7a67b3b0525bf4539d2729d50e3a301a3`.
- Read `package.json`, `AGENTS.md`, and `NEXT_TASKS.md` back from GitHub to verify the remote update.

### README

- Updated `README.md` with modern Node.js requirements.
- Added GitHub tarball global install instructions.
- Added local development install and direct `node test-router.js` usage.
- Kept OS/2 Warp installation instructions and closed the Markdown code fence.
- Verified Markdown code fences are balanced and `test-router.js` still runs with Node.js.

### OS/2 REXX Cleanup

- Removed Markdown wrapper text from `warpcore.cmd`.
- Kept the REXX shell loop, LCARS ANSI output, `EXIT`/`LOGOFF` handling, and `EXIT 0`.
- Verified `warpcore.cmd` starts with the REXX comment, contains no Markdown fence/title wrapper, and ends with `EXIT 0`.

### npm Publish Readiness

- Added `scripts/smoke-test.js`.
- Added `PUBLISHING.md` with npm login, 2FA, preflight, versioning, and publish steps.
- Added `test`, `smoke`, `pack:dry-run`, and `prepublishOnly` scripts to `package.json`.
- Added a package `files` allowlist and `publishConfig.access`.
- Updated `README.md` with smoke test and npm publishing sections.
- Verified the smoke test with Node.js in the source tree and local install output.
- `npm --version` could not run in the current Windows environment because npm is not on `PATH`.

### README Image

- Generated a new LCARS/warp-core README hero image.
- Saved it as `assets/warp-core-lcars-hero.svg`.
- Replaced the external placeholder README image with the repository-local asset.
- Added `assets/` to the npm `files` allowlist.
- Updated the smoke test to verify the README image reference and local SVG asset.
