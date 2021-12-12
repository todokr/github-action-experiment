#!/bin/bash
set -ex

suspicious_keywords=("drop table" "drop column")
pattern=$(IFS="|"; echo "${suspicious_keywords[*]}")
migration_dir="./migration"
echo $(find ${migration_dir}/*.sql | xargs grep -li -E "${pattern}" || true)