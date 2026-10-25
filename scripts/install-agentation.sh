#!/usr/bin/env bash
#
# Installs Agentation Visual Editor into any target web project directory.
#
set -euo pipefail

TARGET_DIR="${1:-.}"
ASSETS_DIR="${TARGET_DIR}/assets/js"

echo "🎯 Installing Agentation Visual Editor into ${TARGET_DIR}..."

mkdir -p "${ASSETS_DIR}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="${SCRIPT_DIR}/../dist/agentation-widget.min.js"

if [ ! -f "${SOURCE_FILE}" ]; then
  SOURCE_FILE="${SCRIPT_DIR}/../dist/agentation-widget.js"
fi

cp -f "${SOURCE_FILE}" "${ASSETS_DIR}/agentation-widget.js"

echo "✅ Copied agentation-widget.js to ${ASSETS_DIR}/agentation-widget.js"
echo ""
echo "🚀 Next Steps:"
echo "Add this line before </body> in your template/layout:"
echo '    <script src="assets/js/agentation-widget.js" defer></script>'
echo ""
echo "Then open your page with ?edit or press Ctrl + Shift + A to edit visually!"
