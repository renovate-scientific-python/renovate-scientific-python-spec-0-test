test:
    # disable logging to console
    RENOVATE_LOG_FILE_LEVEL=debug RENOVATE_LOG_FILE=renovate-log.ndjson npx renovate --platform=local --dry-run=full >/dev/null
    # print
