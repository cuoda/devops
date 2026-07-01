#!/bin/bash

<< comment
error handling
comment

create_directory() {
  mkdir demo
}

if ! create_directory; then
  echo "Unable to create directory"
  exit 1
fi

echo "Directory created successfully"

