# Smart Grep

Grep wrapper that tries to pick the most efficient tool available by context.

**DEPRECATED**: Just use https://github.com/BurntSushi/ripgrep

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

## Development
- First, make sure you have bats installed:
```
basher install sstephenson/bats
```
or manually: [instructions here](https://github.com/sstephenson/bats#installing-bats-from-source)

- Running Tests:
```bash
make test
```

