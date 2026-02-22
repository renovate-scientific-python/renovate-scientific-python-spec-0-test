test:
    rm -f renovate-log.ndjson
    # disable logging to console
    RENOVATE_LOG_FILE_LEVEL=debug RENOVATE_LOG_FILE=renovate-log.ndjson npx renovate --platform=local --dry-run=full >/dev/null
    # print lines containing "Update dependency"
    grep "Update dependency" renovate-log.ndjson
