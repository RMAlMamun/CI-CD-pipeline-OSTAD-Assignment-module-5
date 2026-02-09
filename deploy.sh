#!/usr/bin/env bash
set -e

APP_NAME="node-app"

npm ci

pm2 delete "$APP_NAME" || true
pm2 start "./src/server.js" --name "$APP_NAME"
pm2 save

