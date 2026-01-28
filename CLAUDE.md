# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

AgentCC is Adam's personal agent project. The repository is in its early stages with no established codebase yet.

## Git Workflow (MANDATORY)

**NEVER commit or push directly to the main branch.** All changes MUST go through the following workflow, no matter how small the change is:

1. Create a git worktree from the main repo: `git worktree add ../AgentCC-<feature-name> -b <feature-name>`
2. `cd` into the new worktree directory and do all work there
3. Commit and push the feature branch: `git push -u origin <feature-name>`
4. Create a PR via `gh pr create`
5. Wait for review and merge (do NOT merge without approval)
6. Switch back to main repo, pull latest: `git pull`
7. Clean up the worktree: `git worktree remove ../AgentCC-<feature-name>`

**Rules:**
- No exceptions for "small fixes", "one-line changes", or "urgent hotfixes"
- If you find yourself about to run `git commit` on the main branch, STOP and follow the workflow above
- This ensures multiple Claude Code instances can work on different features in parallel without conflicts
