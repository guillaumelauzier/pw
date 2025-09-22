# Wrap Theme

A creative Jekyll theme for digital agencies and creative portfolios.

## 🚨 CSS Loading Fix

If you're seeing unstyled text (raw HTML without CSS styling), this means the Jekyll site hasn't been properly built or deployed. This theme requires Jekyll processing to load CSS files correctly.

## Quick Fix for CSS Issues

### Option 1: Deploy to GitHub Pages (Recommended)

1. **Enable GitHub Pages**:
   - Go to your repository Settings
   - Scroll to "Pages" section
   - Set Source to "Deploy from a branch"
   - Select `main` branch
   - GitHub will automatically build and deploy your Jekyll site

2. **Using GitHub Actions** (for more control):
   - The `.github/workflows/jekyll.yml` file is included for automatic deployment
   - Push your changes to trigger the build

### Option 2: Build Locally

1. **Install Jekyll**:
   ```bash
   gem install jekyll bundler
   ```

2. **Install dependencies**:
   ```bash
   bundle install
   ```

3. **Build the site**:
   ```bash
   jekyll build
   ```

4. **Serve locally**:
   ```bash
   jekyll serve
   ```

5. **Deploy the `_site` folder** to your hosting provider

### Option 3: Quick Deploy Script

Run the included deployment script:
```bash
chmod +x deploy.sh
./deploy.sh
```

## What Was Fixed

- **CSS Loading Mechanism**: Added fallback CSS loading when Jekyll processing fails
- **GitHub Pages Configuration**: Added workflow for automatic deployment
- **Deploy Script**: Included script for easy local building and deployment

## Deployment Troubleshooting

### If you still see unstyled text:

1. **Check that Jekyll built successfully**:
   - Look for a `_site` directory after building
   - Ensure no build errors in the console

2. **Verify file paths**:
   - CSS files should be in `/assets/css/`
   - All referenced files in `_data/assets.yml` should exist

3. **Check hosting configuration**:
   - Ensure your web server serves the `_site` directory content
   - Verify that CSS files are accessible (try visiting `/assets/css/style.css` directly)

## Theme Structure

- `_data/assets.yml` - Controls which CSS and JS files are loaded
- `_includes/head.html` - Contains CSS loading logic
- `assets/css/` - Theme stylesheets
- `_layouts/` - Page templates
- `_config.yml` - Jekyll configuration

## Support

If you continue to experience CSS loading issues:

1. Ensure Jekyll is properly processing your site
2. Check that all asset files exist in the correct locations
3. Verify your hosting environment supports Jekyll or serves static files correctly
4. Review the browser console for 404 errors on CSS files

## License

This theme is provided as-is. Ensure proper Jekyll deployment for full functionality.