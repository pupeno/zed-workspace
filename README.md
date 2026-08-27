# Pablo's Zed Contributing Workspace

This is a repo that contains some things that I find useful when contributing to [Zed](https://github.com/zed-industries/zed). It contains the devcontainer configuration.

## Setup

Clone this repository, then simply start the devcontainer using [Zed](https://zed.dev), [VS Code](https://code.visualstudio.com/), or the [Dev Container CLI](https://containers.dev/guide/cli).

It will clone Zed into `zed`, set it up, everything!

## Tickets

- [#63033 - Dev container lifecycle commands (e.g. postCreateCommand) are word-split and silently broken](https://github.com/zed-industries/zed/issues/63033): closed as a duplicate of [#62964](https://github.com/zed-industries/zed/issues/62964); string-form `postCreateCommand`/`postStartCommand` lost their argument boundaries, silently dropping arguments.
- [#61691 - Dev containers: feature `installsAfter` metadata is ignored, producing an install order that breaks the build](https://github.com/zed-industries/zed/issues/61691): devcontainer features are installed without honoring `installsAfter`, so ordering-dependent feature installs can break.

## Pull requests

- [#63034 - Preserve Docker exec command arguments](https://github.com/zed-industries/zed/pull/63034): fixes [#62964](https://github.com/zed-industries/zed/issues/62964) and [#63033](https://github.com/zed-industries/zed/issues/63033) (duplicate) by passing lifecycle commands to Docker as distinct arguments instead of flattening them into a space-separated string.
