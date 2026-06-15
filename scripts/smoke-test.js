#!/usr/bin/env node

const assert = require("node:assert/strict");
const { spawnSync } = require("node:child_process");
const fs = require("node:fs");
const path = require("node:path");

const rootDir = path.resolve(__dirname, "..");

function readText(relativePath) {
  return fs.readFileSync(path.join(rootDir, relativePath), "utf8");
}

function assertIncludes(source, expected, label) {
  assert.ok(source.includes(expected), `${label} missing ${expected}`);
}

const packageJson = JSON.parse(readText("package.json"));
assert.equal(packageJson.name, "warp-core-lcars");
assert.equal(packageJson.bin?.warpcore, "./test-router.js");
assertIncludes(packageJson.files || [], "test-router.js", "package files");
assertIncludes(packageJson.files || [], "warpcore.cmd", "package files");

const entrypoint = readText("test-router.js");
assert.ok(entrypoint.startsWith("#!/usr/bin/env node"), "test-router.js must keep the Node shebang");

const rexxScript = readText("warpcore.cmd");
assert.ok(
  rexxScript.startsWith("/* REXX - Warp-Core-LCARS Terminal Environment for OS/2 */"),
  "warpcore.cmd should start with the REXX header",
);
assert.ok(!rexxScript.includes("```"), "warpcore.cmd must not contain Markdown fences");
assert.ok(!rexxScript.includes("###"), "warpcore.cmd must not contain Markdown headings");
assert.ok(!rexxScript.startsWith("---"), "warpcore.cmd must not contain Markdown front matter");
assert.ok(rexxScript.trimEnd().endsWith("EXIT 0"), "warpcore.cmd should end with EXIT 0");

const readme = readText("README.md");
assertIncludes(readme, "npm install -g https://github.com/ahlimosa-gif/Warp-Core-LCARS/archive/refs/heads/main.tar.gz", "README");
assertIncludes(readme, "warpcore", "README");
assertIncludes(readme, "assets/warp-core-lcars-hero.svg", "README");

const heroImage = fs.statSync(path.join(rootDir, "assets", "warp-core-lcars-hero.svg"));
assert.ok(heroImage.size > 5_000, "README hero image should exist and be a real SVG asset");
const heroMarkup = readText("assets/warp-core-lcars-hero.svg");
assert.ok(heroMarkup.startsWith("<svg"), "README hero should be an SVG");
assertIncludes(heroMarkup, "WARP CORE LCARS", "README hero SVG");

const run = spawnSync(process.execPath, [path.join(rootDir, "test-router.js")], {
  cwd: rootDir,
  encoding: "utf8",
});

assert.equal(run.status, 0, run.stderr || run.stdout);
const output = `${run.stdout}\n${run.stderr}`;
assertIncludes(output, "LCARS TERMINAL OVERRIDE ENGAGED", "test-router output");
assertIncludes(output, "Welcome to the Federation.", "test-router output");

console.log("Smoke test passed.");
