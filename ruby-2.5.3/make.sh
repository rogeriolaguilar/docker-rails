#!/usr/bin/env bash
CMD_BASE="$(readlink -m $0)" || CMD_BASE="$0"; CMD_BASE="$(dirname $CMD_BASE)"

exec docker build -t rogeriolaguilar/ruby:2.5.3 "$CMD_BASE"
exec docker push rogeriolaguilar/ruby:2.5.3
