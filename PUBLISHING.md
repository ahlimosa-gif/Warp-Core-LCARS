# Publishing

This package is prepared for npm publishing, but it is not currently published to the npm registry.

## Requirements

- Node.js 18 or newer.
- npm CLI available on `PATH`.
- An npm account with publish rights.
- npm two-factor authentication enabled, or a granular access token with bypass 2FA enabled.

## Preflight

Run the smoke test:

```bash
npm test
```

Preview the package contents before publishing:

```bash
npm run pack:dry-run
```

The package `files` allowlist keeps the npm tarball focused on runtime files:

- `test-router.js`
- `warpcore.cmd`
- `install.cmd`
- `LCARS_FONT.TXT`
- `Node.js`
- `scripts/`

`package.json`, `README.md`, and license metadata are handled by npm package rules.

## Version

Choose the appropriate semver bump:

```bash
npm version patch
```

Use `minor` or `major` when the release includes compatible feature work or breaking changes.

## Publish

Log in interactively when publishing from a local terminal:

```bash
npm login --auth-type=web
```

Publish the package:

```bash
npm publish
```

If npm prompts for a one-time password, complete the 2FA challenge in the terminal.

## Notes

- The current package name is unscoped: `warp-core-lcars`.
- `publishConfig.access` is set to `public`.
- The current license field is `UNLICENSED`; choose and add a real `LICENSE` file before publishing if this should be open source.
- Do not publish with local credentials, tokens, or generated archives committed to the repository.
