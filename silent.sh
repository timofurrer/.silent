#!/bin/bash

if [ -z "$SILENT_OUTPUT_FILE" ]; then
  SILENT_OUTPUT_FILE=~/.last_silent_output
fi

if [ -z "$SILENT_ERROR_OUTPUT_FILE" ]; then
  SILENT_ERROR_OUTPUT_FILE=~/.last_silent_error_output
fi

function silent( )
{
  $* > $SILENT_OUTPUT_FILE 2>$SILENT_ERROR_OUTPUT_FILE
}
