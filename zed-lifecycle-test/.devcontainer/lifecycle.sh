#!/usr/bin/env bash
set -euo pipefail

echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) ${1} ran (pid $$)" | tee -a lifecycle.log
