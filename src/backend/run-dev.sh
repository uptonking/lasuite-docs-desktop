#!/bin/zsh


# Export variables (ignoring comments and empty lines)
# ENV_FILE_="./config/.env.dev"
# if [ -f "$ENV_FILE" ]; then
#     export $(grep -v '^#' "$ENV_FILE" | xargs)
# else
#     echo "Warning: $ENV_FILE not found."
# fi


set -a
source ../../env.d/development/common
source ../../env.d/development/postgresql
set +a


uv run python manage.py runserver 0.0.0.0:8071