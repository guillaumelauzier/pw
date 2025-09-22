#!/bin/bash

# Deploy script for the Wrap theme
# This script helps ensure the Jekyll site is properly built and deployed

echo "Wrap Theme Deployment Script"
echo "============================="

# Check if Jekyll is installed
if ! command -v jekyll &> /dev/null; then
    echo "Jekyll is not installed. Installing Jekyll..."
    gem install jekyll bundler
fi

# Install dependencies
echo "Installing dependencies..."
if [ -f "Gemfile" ]; then
    bundle install
else
    echo "No Gemfile found. Installing basic Jekyll plugins..."
    gem install jekyll-feed jekyll-paginate
fi

# Build the site
echo "Building the Jekyll site..."
if [ -f "_config.yml" ]; then
    JEKYLL_ENV=production jekyll build
    echo "Site built successfully in _site directory"
    echo ""
    echo "To serve the site locally:"
    echo "  jekyll serve"
    echo ""
    echo "To deploy to GitHub Pages:"
    echo "  1. Push to your repository"
    echo "  2. Enable GitHub Pages in repository settings"
    echo "  3. GitHub will automatically build and deploy"
    echo ""
    echo "To deploy to other hosting:"
    echo "  Upload the contents of the _site directory"
else
    echo "Error: _config.yml not found. This doesn't appear to be a Jekyll site."
    exit 1
fi