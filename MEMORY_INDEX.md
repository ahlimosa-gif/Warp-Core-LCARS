# MEMORY_INDEX.md

## Current Status

- Project: `ahlimosa-gif/Warp-Core-LCARS`.
- Date: 2026-06-14.
- Status: local install verified; npm CLI metadata added.

## Must Read

- `AGENTS.md`: collaboration and maintenance rules.
- `NEXT_TASKS.md`: current priority and remaining work.
- `PROGRESS.md`: install and validation history.

## Read When Needed

- `PROJECT_CONTEXT.md`: runtime and file layout.
- `DECISIONS.md`: package and install decisions.

## Key Files

- `test-router.js`: Node.js LCARS terminal renderer.
- `package.json`: npm package metadata and `warpcore` bin binding.
- `install.cmd`: OS/2 REXX installer.
- `warpcore.cmd`: OS/2 REXX terminal shell sample.

## Latest Conclusions

- `test-router.js` is the working modern-system entrypoint.
- `bin.warpcore` points to `./test-router.js`.
- npm registry did not have a published `warp-core-lcars` package during local install verification.
