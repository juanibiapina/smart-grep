#!/usr/bin/env bats

load test_helper

@test "uses 'git grep' inside a git repository" {
  git init .
  mock_git

  run smart-grep pattern

  [ "${lines[0]}" = "Using command: git grep -I -H --line-number --untracked pattern" ]
}

@test "uses ag when available" {
  mock ag
  mock ack
  mock grep

  run smart-grep pattern

  [ "${lines[0]}" = "Using command: ag --column pattern" ]
}

@test "uses ack if ag not available" {
  mock ack
  mock grep

  run smart-grep pattern

  [ "${lines[0]}" = "Using command: ack -s -H --column pattern" ]
}

@test "uses grep if ack not available" {
  mock grep

  run smart-grep pattern

  [ "${lines[0]}" = "Using command: grep -nrI pattern" ]
}
