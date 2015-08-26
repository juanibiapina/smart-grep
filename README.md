# sgrep

Grep wrapper that tries to pick the most efficient tool available.

## Installation

```
basher install juanibiapina/sgrep
```

## Usage

```
sgrep pattern
```

sgrep will select the tool with the following priority:

- `git grep` if current directory is a git repository
- `ag` if available
- `ack` if available
- `grep`

## Usage from Vim

Add the following to your vim configuration:

```
if executable('sgrep')
  set grepprg=sgrep
endif
```
