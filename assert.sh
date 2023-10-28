##############
# Assertions #
##############

function assert_equals {
  if [ -z "$1" ]; then error_message_missing_first; fi
  if [ -z "$2" ]; then error_message_missing_second; fi

  if [ "$1" == "$2" ]; then
    message_pass
  else
    message_fail
  fi
}

function assert_not_null {
  if [ -z "$1" ]; then echo "Test failed!"; fi
  message_pass
}

############
# Messages #
############

function message_pass {
  echo "Test passed!"
}

function message_fail {
  echo "Test failed! Received: '$1'. Expected: '$2'."
  exit 1
}

function error_message_missing_first {
  echo "Error: First variable (for the result value) is unset. Please provide a value."
  exit 1
}

function error_message_missing_second {
  echo "Error: Second variable (for the expected value) is unset. Please provide a value."
  exit 1
}
