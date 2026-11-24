#!/usr/bin/env bash
# Linux / macOS
export PGPASSWORD=123456
psql -U postgres -h localhost -p 5432 -f "$(dirname "$0")/init.sql"
