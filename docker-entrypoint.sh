#!/usr/bin/env bash

set -e

echo "${JOB}" >> "${HOME_DIR}/jobs/job1" \
	&& crontab "${HOME_DIR}/jobs/job1"

exec "$@"
