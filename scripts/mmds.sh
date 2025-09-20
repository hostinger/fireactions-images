#!/bin/bash

set -e

# Configuration
MMDS_ADDRESS="${MMDS_ADDRESS:-http://169.254.169.254}"
TOKEN_TTL="${TOKEN_TTL:-21600}"

# Get MMDS token
get_token() {
    curl -s -X PUT \
        -H "X-Metadata-Token-TTL-Seconds: ${TOKEN_TTL}" \
        "${MMDS_ADDRESS}/latest/api/token"
}

# Get metadata for a given path
get_metadata() {
    local path="$1"
    local token="$2"

    # Add leading slash if not present
    [[ "$path" != /* ]] && path="/$path"

    curl -s \
        -H "Accept: application/json" \
        -H "X-Metadata-Token: $token" \
        "${MMDS_ADDRESS}/latest/meta-data${path}"
}

# Main execution
main() {
    if [[ $# -eq 0 ]]; then
        echo "Usage: $0 <metadata-path>"
        echo "Example: $0 instance-id"
        exit 1
    fi

    local path="$1"
    local token

    # Get token
    token=$(get_token)

    # Get metadata
    get_metadata "$path" "$token"
}

main "$@"
