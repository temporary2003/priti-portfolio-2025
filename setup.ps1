# Quick Setup Script
# Run this after renaming the folder

Write-Host "🚀 Setting up Priti's Portfolio for Vercel..." -ForegroundColor Cyan
Write-Host ""

# Check if node_modules exists
if (Test-Path "node_modules") {
    Write-Host "📦 Removing old node_modules..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force "node_modules"
}

# Check if package-lock.json exists
if (Test-Path "package-lock.json") {
    Write-Host "📦 Removing old package-lock.json..." -ForegroundColor Yellow
    Remove-Item -Force "package-lock.json"
}

# Install dependencies
Write-Host "📦 Installing dependencies..." -ForegroundColor Green
npm install

Write-Host ""
Write-Host "✅ Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Create a .env file from .env.example and add your credentials"
Write-Host "2. Test locally: npm run dev"
Write-Host "3. Build: npm run build"
Write-Host "4. Push to GitHub and deploy to Vercel"
Write-Host ""
Write-Host "See DEPLOYMENT.md for detailed instructions." -ForegroundColor Yellow
