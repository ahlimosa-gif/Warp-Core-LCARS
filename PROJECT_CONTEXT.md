# PROJECT_CONTEXT.md

## Source

- Repository: `https://github.com/ahlimosa-gif/Warp-Core-LCARS`
- Default branch: `main`

## Runtime

- Modern environments use Node.js through `test-router.js`.
- OS/2-oriented paths use REXX-style `.cmd` files.

## CLI Package Shape

The package exposes:

```json
{
  "bin": {
    "warpcore": "./test-router.js"
  }
}
```

This allows npm-style installs to create a `warpcore` command that runs the Node.js LCARS renderer.

## Known Constraints

- The repository is intentionally small and does not currently include external dependencies.
- `warpcore.cmd` currently contains Markdown wrapper text around the REXX example content.
