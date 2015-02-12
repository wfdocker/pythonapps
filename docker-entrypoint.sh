#!/bin/bash

pip install --allow-all-external -r /app/requirements.txt

exec "$@"

