#!/bin/bash
set -e
IFS='|'

# TODO(equartey): remove before merge
echo "Pulling Amplify backend by stack ID: $STACK_ID"

echo n | npx ampx generate outputs \ 
--stack $STACK_ID \
--profile ${AWS_PROFILE:-default} \
--format dart \
--out-dir lib
