#!/usr/bin/env bash
set -euxo pipefail

BASE_SHA=$(git rev-parse --verify "origin/${GITHUB_BASE_REF}^{commit}")
HEAD_SHA=$(git rev-parse --verify "origin/${GITHUB_HEAD_REF}^{commit}")
git log --pretty=%s "${BASE_SHA}..${HEAD_SHA}" | grep --quiet -E '^(amend|fixup|squash)!' && exit 1 || exit 0
