# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

AgentCC is Adam's personal agent project. The repository is in its early stages with no established codebase yet.

## Git Workflow

When working on a new feature or fix:

1. Create a git worktree from the main repo: `git worktree add ../AgentCC-<feature-name> -b <feature-name>`
2. Work in the new worktree directory
3. Commit, push, create PR, review, and merge
4. Switch back to main repo, pull latest, then clean up: `git worktree remove ../AgentCC-<feature-name>`

This ensures multiple Claude Code instances can work on different features in parallel without conflicts.
