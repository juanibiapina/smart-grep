export SGREP_TMP_DIR="${BATS_TMPDIR}/sgrep"
export SGREP_PWD="${SGREP_TMP_DIR}/pwd"

export FIXTURES_DIR="${BATS_TEST_DIRNAME}/fixtures"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin
export PATH="${BATS_TEST_DIRNAME}/../bin:$PATH"

mkdir -p "${SGREP_TMP_DIR}"
mkdir -p "${SGREP_PWD}"

setup() {
  cd "${SGREP_PWD}"
}

teardown() {
  rm -rf "${SGREP_TMP_DIR}"
}

mock_git() {
  export ORIGINAL_GIT="$(which git)"
  export PATH="${FIXTURES_DIR}/path/git:$PATH"
}

mock() {
  local command="$1"
  export PATH="${FIXTURES_DIR}/path/$command:$PATH"
}
