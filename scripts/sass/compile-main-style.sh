#!/bin/bash

# Vérifie qu'un argument a été passé
if [ -z "$1" ]; then
  echo "❌ Please specify theme name (ex: ./scripts/compile-sass.sh theme-name)"
  exit 1
fi

THEME_NAME=$1
SRC="wp/wp-content/themes/$THEME_NAME/scss"
DEST="wp/wp-content/themes/$THEME_NAME/"

echo "📦 Compiling from $SRC to $DEST..."
sass "$SRC":"$DEST"
echo "✅ Compilation done !"
