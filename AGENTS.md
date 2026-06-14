# AGENTS.md

## Assistant Rules

Use Chinese for project maintenance responses by default. Keep code, variable names, function names, API paths, database fields, package names, and command names in standard English.

## Workflow

1. Read `AGENTS.md`, `MEMORY_INDEX.md`, and `NEXT_TASKS.md` before starting project work.
2. Read `PROJECT_CONTEXT.md` only when architecture, runtime, install paths, or module relationships matter.
3. Read `PROGRESS.md` only when history, completed work, known issues, or installation records matter.
4. Read `DECISIONS.md` only when package metadata, runtime choice, directory structure, or release workflow matter.
5. Make the smallest viable change first; avoid broad refactors unless requested.
6. Before edits, state the likely cause, target files, and intended change.
7. After edits, run the smallest useful validation command.
8. After completing work, update `PROGRESS.md` and `NEXT_TASKS.md`; update `DECISIONS.md` when a durable technical decision changes.

## Project Notes

- Modern runtime entrypoint: `test-router.js`.
- OS/2 REXX-oriented files: `install.cmd` and `warpcore.cmd`.
- Do not commit secrets, tokens, passwords, or local credentials.
