#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${SCRIPT_DIR}/assert.sh"
source "${SCRIPT_DIR}/check_node.sh"

function test_check_node {
  EXPECTED="Hello!"

  RESULT=$(check_node)

  assert_not_null $RESULT
}

test_check_node
