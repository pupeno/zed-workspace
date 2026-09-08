# Workspace layout

The project root at `/workspaces/zed/` is a plain directory containing two
sibling Git repositories:

- `/workspaces/zed/zed/` is the Zed repository. Run source Git commands,
  inspect diffs, and make source changes there.
- `/workspaces/zed/workspace/` owns the devcontainer configuration,
  documentation, and local experiments.
- `/workspaces/zed/workspace/scratch/` contains task context and experiments.
  It is not part of the Zed repository unless a task explicitly moves the work
  into that repository.

The `.devcontainer` entry at the project root is a symlink into the workspace
repository. Keep the two repositories as siblings; do not turn the source
checkout into a submodule or nest it inside the workspace repository.
