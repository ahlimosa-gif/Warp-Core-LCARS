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

### Publish Preflight

- Decision: use a zero-dependency Node.js smoke test as the default publish preflight.
- Reason: the project has no runtime dependencies and the main risks are package metadata drift, a broken Node entrypoint, or Markdown wrapper text returning to `warpcore.cmd`.
- Result: `npm test`, `npm run smoke`, and `prepublishOnly` all run the smoke test before publish.

### Package Contents

- Decision: use a `files` allowlist and `publishConfig.access: "public"`.
- Reason: the npm tarball should include runtime files without project memory files or local artifacts.
- Result: npm packaging is constrained to the LCARS runtime files plus npm's standard metadata.
