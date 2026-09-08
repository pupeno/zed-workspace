# Pablo's Zed Contributing Workspace

This repository is Pablo's development workspace for contributing to [Zed](https://github.com/zed-industries/zed).

It keeps the devcontainer configuration, documentation, and local experiments together.

## Tickets

- [#61691 - Dev containers: feature `installsAfter` metadata is ignored, producing an install order that breaks the build](https://github.com/zed-industries/zed/issues/61691): devcontainer features are installed without honoring `installsAfter`, so ordering-dependent feature installs can break.

## Closed tickets

- [#63828 - Connecting to a dev container, SSH, or WSL fails with a locally built Zed](https://github.com/zed-industries/zed/issues/63828): debug builds of Zed's remote server fail to embed their default settings, causing the server to panic when the source checkout is unavailable on the remote host.
- [#63033 - Dev container lifecycle commands (e.g. postCreateCommand) are word-split and silently broken](https://github.com/zed-industries/zed/issues/63033): closed as a duplicate of [#62964](https://github.com/zed-industries/zed/issues/62964); string-form `postCreateCommand`/`postStartCommand` lost their argument boundaries, silently dropping arguments.

## Pull requests

- [#63827 - Fix connecting to devcontainers, ssh, or wsl, with a locally built Zed](https://github.com/zed-industries/zed/pull/63827): fixes [#63828](https://github.com/zed-industries/zed/issues/63828) by forwarding the remote server's `debug-embed` feature to `util`, ensuring development assets are embedded in debug builds used on remote hosts.
- [#63034 - Preserve Docker exec command arguments](https://github.com/zed-industries/zed/pull/63034): fixes [#62964](https://github.com/zed-industries/zed/issues/62964) and [#63033](https://github.com/zed-industries/zed/issues/63033) (duplicate) by passing lifecycle commands to Docker as distinct arguments instead of flattening them into a space-separated string.

## Setup

Clone the workspace and run its setup script:

```bash
mkdir zed
git clone https://github.com/pupeno/zed-workspace.git zed/workspace
zed/workspace/setup.sh
```

Open the outer `zed/` directory in an editor with devcontainer support, then
reopen it in its devcontainer.

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
