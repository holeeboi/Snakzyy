#!/usr/bin/env bash
# Deploys this folder to Vercel (production).
# Usage: ./deploy.sh
set -e

cd "$(dirname "$0")"

if ! command -v npx >/dev/null 2>&1; then
  echo "Node.js is required. Install it from https://nodejs.org and run this again."
  exit 1
fi

echo "Deploying to Vercel (you may be asked to log in the first time)..."
npx vercel --prod

echo "Done. Add your custom domain in the Vercel dashboard under Settings > Domains."
