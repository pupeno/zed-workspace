# Pablo's Zed Contributing Workspace

This repository is Pablo's development workspace for contributing to [Zed](https://github.com/zed-industries/zed).

It keeps the devcontainer configuration and documentation together, while the `zed/` directory contains the Zed source code itself.

## Tickets

- [#63033 - Dev container lifecycle commands (e.g. postCreateCommand) are word-split and silently broken](https://github.com/zed-industries/zed/issues/63033): closed as a duplicate of [#62964](https://github.com/zed-industries/zed/issues/62964); string-form `postCreateCommand`/`postStartCommand` lost their argument boundaries, silently dropping arguments.
- [#61691 - Dev containers: feature `installsAfter` metadata is ignored, producing an install order that breaks the build](https://github.com/zed-industries/zed/issues/61691): devcontainer features are installed without honoring `installsAfter`, so ordering-dependent feature installs can break.

## Pull requests

- [#63034 - Preserve Docker exec command arguments](https://github.com/zed-industries/zed/pull/63034): fixes [#62964](https://github.com/zed-industries/zed/issues/62964) and [#63033](https://github.com/zed-industries/zed/issues/63033) (duplicate) by passing lifecycle commands to Docker as distinct arguments instead of flattening them into a space-separated string.

## Setup

Clone this repository into a directory named `zed`:

```bash
git clone https://github.com/pupeno/zed-workspace.git zed
```

Open it in [Zed](https://zed.dev), then reopen it in its devcontainer.

## Common Commands

Pull Zed:

```bash
cd /workspaces/zed/zed
git pull
```

Run Zed:

```bash
cd /workspaces/zed/zed
cargo run
```

Run all tests:

```bash
cd /workspaces/zed/zed
cargo test --workspace
```
