#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/assert.sh"
source "${SCRIPT_DIR}/greet.sh"

function test_greet {
  EXPECTED="Hello!"

  RESULT=$(greet)

  assert_equals $RESULT $EXPECTED
}

test_greet
