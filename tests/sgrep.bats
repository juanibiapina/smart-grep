#!/usr/bin/env bats

load test_helper

@test "uses 'git grep' inside a git repository" {
  git init .
  mock_git

  run sgrep pattern

  [ "${lines[0]}" = "Using command: git grep -H --line-number pattern" ]
}
