#!/bin/bash

# CSS Loading Diagnostic Script for Wrap Theme
# This script helps diagnose CSS loading issues

echo "Wrap Theme CSS Diagnostic"
echo "========================="
echo ""

# Check if this is a Jekyll site
if [ -f "_config.yml" ]; then
    echo "✓ Jekyll configuration found"
else
    echo "✗ No _config.yml found - this may not be a Jekyll site"
fi

# Check if CSS files exist
echo ""
echo "Checking CSS files:"
css_files=("assets/css/foundation.css" "assets/css/style.css" "assets/css/patch.css" "assets/css/fontello.css" "assets/css/font-awesome.css")

for file in "${css_files[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file missing"
    fi
done

# Check if assets.yml exists
echo ""
if [ -f "_data/assets.yml" ]; then
    echo "✓ _data/assets.yml found"
else
    echo "✗ _data/assets.yml missing"
fi

# Check for _site directory (Jekyll build output)
echo ""
if [ -d "_site" ]; then
    echo "✓ _site directory found (Jekyll has been built)"
    if [ -f "_site/index.html" ]; then
        echo "✓ Built index.html exists"
    else
        echo "✗ Built index.html missing"
    fi
else
    echo "✗ _site directory not found (Jekyll needs to be built)"
fi

# Check Jekyll installation
echo ""
if command -v jekyll &> /dev/null; then
    echo "✓ Jekyll is installed ($(jekyll --version))"
else
    echo "✗ Jekyll not installed"
    echo "  Install with: gem install jekyll bundler"
fi

echo ""
echo "Recommendations:"
echo "=================="

if [ ! -d "_site" ]; then
    echo "1. Build the site: jekyll build"
    echo "2. Or serve locally: jekyll serve"
fi

echo "3. For immediate preview: open index_static.html"
echo "4. For GitHub Pages: enable Pages in repository settings"
echo "5. For help: see README.md"

echo ""
echo "If CSS still won't load:"
echo "- Check file permissions"
echo "- Verify web server configuration"
echo "- Check browser console for 404 errors"