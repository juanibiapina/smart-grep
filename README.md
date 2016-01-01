# Smart Grep

Grep wrapper that tries to pick the most efficient tool available by context.

## Installation

```
basher install juanibiapina/smart-grep
```

## Usage

```
smart-grep pattern
```

smart-grep will select the tool with the following priority:

- `git grep` if current directory is a git repository
- `ag` if available
- `ack` if available
- `grep`

## Usage from Vim

Add the following to your vim configuration:

```
if executable('smart-grep')
  set grepprg=smart-grep
endif
```
