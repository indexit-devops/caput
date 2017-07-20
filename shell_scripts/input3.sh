#!/bin/bash

echo "Input Given = $1"

FUNC() {

echo "All Input = $*"
}

FUNC $*
