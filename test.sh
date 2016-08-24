#!/bin/bash

declare file="$Ash__ACTIVE_MODULE_DIRECTORY/extra/example.yaml"
declare prefix="YamlParse_output_"
eval $(YamlParse__parse "$file" "$prefix")

#################################################
# Test that basic keys work
#################################################
Yamlparse__test_keys(){
    Yamlparse_test_expected "$YamlParse_output_one" "kittens"
    if [[ $? -ne 0 ]]; then return 1; fi

    Yamlparse_test_expected "$YamlParse_output_two" "puppies"
    if [[ $? -ne 0 ]]; then return 1; fi
}

#################################################
# Test that nested keys are working
#################################################
Yamlparse__test_nested(){
    Yamlparse_test_expected "$YamlParse_output_trees_evergreen" "so green"
    if [[ $? -ne 0 ]]; then return 1; fi

    Yamlparse_test_expected "$YamlParse_output_trees_maple" "so red"
    if [[ $? -ne 0 ]]; then return 1; fi
}

#################################################
# Testing that doubly nested keys work.  We're
# not going to test any further than this.
#################################################
Yamlparse__test_doubly_nested(){
    Yamlparse_test_expected "$YamlParse_output_trees_maple_canadian" "canada"
    if [[ $? -ne 0 ]]; then return 1; fi

    Yamlparse_test_expected "$YamlParse_output_trees_maple_american" "america"
    if [[ $? -ne 0 ]]; then return 1; fi
}

#################################################
# Tests that keys still are working, after putting
# them in a line after nested values
#################################################
Yamlparse__test_keys_after_nested(){
    Yamlparse_test_expected "$YamlParse_output_three" "rats"
    if [[ $? -ne 0 ]]; then return 1; fi

    Yamlparse_test_expected "$YamlParse_output_four" "bats"
    if [[ $? -ne 0 ]]; then return 1; fi
}

#################################################
# This is a helper function, and is not run
# directly by our test suite (note the single
# underscore).
#
# @param $1: The actual result
# @param $2: The expected result
# @returns $?: 1 if this test has failed,
#   0 if this test was successful.  Also returns
#   the error message to be returned in our tests.
#################################################
Yamlparse_test_expected(){
    local actual_result="$1"
    local expected_result="$2"

    if [[ "$actual_result" != "$expected_result" ]]; then
        echo "Expected '$expected_result', but got '$actual_result'"
        return 1
    else
        return 0
    fi
}
