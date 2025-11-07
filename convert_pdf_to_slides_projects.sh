#!/bin/bash

# Script to convert PDF to PNG slides for project pages
# Usage: ./convert_pdf_to_slides.sh <project_name>
# Example: ./convert_pdf_to_slides.sh YouTubeContentSearch

set -e  # Exit on error

# Check if project name is provided
if [ -z "$1" ]; then
    echo "Error: Project name is required"
    echo "Usage: $0 <project_name>"
    echo "Example: $0 YouTubeContentSearch"
    exit 1
fi

PROJECT_NAME="$1"
PDF_FILE="assets/pdf/${PROJECT_NAME}.pdf"
OUTPUT_DIR="assets/img/projects/${PROJECT_NAME}"

# Check if PDF exists
if [ ! -f "$PDF_FILE" ]; then
    echo "Error: PDF file not found: $PDF_FILE"
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "Converting $PDF_FILE to PNG slides..."
echo "Output directory: $OUTPUT_DIR"

# Convert PDF to PNG with high quality
pdftoppm -png -r 150 "$PDF_FILE" "$OUTPUT_DIR/slide"

# Count the number of slides created
SLIDE_COUNT=$(ls -1 "$OUTPUT_DIR"/slide-*.png 2>/dev/null | wc -l)

if [ "$SLIDE_COUNT" -eq 0 ]; then
    echo "Error: No slides were created. Check if pdftoppm is installed."
    echo "Install with: sudo apt-get install poppler-utils (Ubuntu/Debian)"
    echo "or: brew install poppler (macOS)"
    exit 1
fi

echo "✓ Successfully created $SLIDE_COUNT slides in $OUTPUT_DIR"
echo ""
echo "Next steps:"
echo "1. Add to your project markdown file (_projects/${PROJECT_NAME}.md):"
echo ""
echo "   ---"
echo "   slides_count: $SLIDE_COUNT"
echo "   images:"
echo "     slider: true"
echo "   ---"
echo ""
echo "2. Add the carousel code:"
echo ""
echo "   <swiper-container keyboard=\"true\" navigation=\"true\" pagination=\"true\" pagination-clickable=\"true\" pagination-dynamic-bullets=\"true\" rewind=\"true\">"
echo "     {% for i in (1..page.slides_count) %}"
echo "       {% if i < 10 %}"
echo "         {% capture slide_path %}assets/img/projects/${PROJECT_NAME}/slide-0{{ i }}.png{% endcapture %}"
echo "       {% else %}"
echo "         {% capture slide_path %}assets/img/projects/${PROJECT_NAME}/slide-{{ i }}.png{% endcapture %}"
echo "       {% endif %}"
echo "       <swiper-slide><img src=\"{{ slide_path | relative_url }}\" class=\"img-fluid rounded z-depth-1\" alt=\"Slide {{ i }}\"></swiper-slide>"
echo "     {% endfor %}"
echo "   </swiper-container>"
