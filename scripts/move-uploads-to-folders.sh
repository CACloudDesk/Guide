#!/usr/bin/env bash
# Move pictures and PDFs from Upload/ to the correct folders automatically.
# Run from project root: ./scripts/move-uploads-to-folders.sh

set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
UPLOAD="$ROOT/Upload"
ASSETS="$ROOT/assets"

if [[ ! -d "$UPLOAD" ]]; then
  echo "Upload folder not found: $UPLOAD"
  exit 1
fi

mkdir -p "$ASSETS"

moved=0
for f in "$UPLOAD"/*; do
  [[ -e "$f" ]] || continue
  name=$(basename "$f")
  ext="${name##*.}"
  ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

  case "$ext_lower" in
    png|jpg|jpeg|gif|webp|svg)
      dest="$ASSETS/$name"
      if [[ -f "$dest" ]]; then
        dest="$ASSETS/${name%.*}-$(date +%Y%m%d-%H%M%S).$ext"
      fi
      mv "$f" "$dest" && echo "Image -> assets: $name" && ((moved++)) || true
      ;;
    pdf)
      dest="$ASSETS/$name"
      if [[ -f "$dest" ]]; then
        dest="$ASSETS/${name%.*}-$(date +%Y%m%d-%H%M%S).$ext"
      fi
      mv "$f" "$dest" && echo "PDF -> assets: $name" && ((moved++)) || true
      ;;
    *)
      echo "Skipped (not image/PDF): $name"
      ;;
  esac
done

if [[ $moved -eq 0 ]]; then
  echo "No images or PDFs to move in Upload/"
else
  echo "Done. Moved $moved file(s) to assets/"
fi
