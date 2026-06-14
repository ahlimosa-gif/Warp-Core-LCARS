# DECISIONS.md

## 2026-06-14

### npm CLI Entrypoint

- Decision: use `test-router.js` as the npm CLI entrypoint.
- Reason: it already has a Node.js shebang and contains the modern environment detector/renderer.
- Result: `package.json` maps `bin.warpcore` to `./test-router.js`.

### Package License Field

- Decision: set `license` to `UNLICENSED`.
- Reason: no explicit license file was present in the repository during inspection.
- Result: package metadata avoids implying an open-source license that has not been declared.
