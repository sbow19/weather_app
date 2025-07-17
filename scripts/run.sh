#!/bin/bash
set -e

# Usage: ./run.sh dev|prod|test [DEVICE]
ENV="$1"

DEVICE="$2"

if [[ -z "$ENV" ]]; then
    echo "Usage: ./scripts/run.sh [dev|prod|test]"
    exit 1
fi

case "$ENV" in
    dev)
        ENV_FILE="lib/config/.env.dev"
    ;;
    prod)
        ENV_FILE="lib/config/.env.prod"
    ;;
    test)
        ENV_FILE="lib/config/.env.test"
    ;;
    prev)
        ENV_FILE="lib/config/.env.prev"
    ;;
    *)
        echo "Invalid environment: $ENV"
        exit 1
    ;;
esac

echo "Running Flutter app with environment: $ENV"
echo "Using env file: $ENV_FILE"

if [[ -n "$DEVICE" ]]; then

    flutter run -d "$DEVICE" --dart-define=ENV_FILE="$ENV_FILE"

elif [[ "$ENV" = "test" ]]; then
    flutter test --dart-define=ENV_FILE="$ENV_FILE"

else
    flutter run --dart-define=ENV_FILE="$ENV_FILE"
fi

