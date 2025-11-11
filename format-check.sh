#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Running Prettier formatter...${NC}"

# Run prettier on all files
npx prettier . --write

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ All files formatted successfully!${NC}"

    # Check if there are any changes after formatting
    if ! git diff --quiet; then
        echo -e "${YELLOW}Changes detected after formatting. Adding formatted files...${NC}"
        git add -u
        echo -e "${GREEN}✓ Formatted files added to staging area${NC}"
    else
        echo -e "${GREEN}✓ No formatting changes needed${NC}"
    fi
else
    echo -e "${RED}✗ Prettier formatting failed${NC}"
    exit 1
fi

echo -e "${GREEN}Ready to commit and push!${NC}"
