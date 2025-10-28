# Vercel Deployment Guide

This guide will help you deploy your portfolio to Vercel.

## Prerequisites

- A GitHub account
- A Vercel account (sign up at https://vercel.com)
- Git installed on your computer

## Step 1: Push to GitHub

1. **Rename the folder** to remove " - Copy" from the name:
   - Rename `PRITI PORTFOLIO - Copy` to `priti-portfolio`

2. **Initialize Git repository** (if not already done):
   ```bash
   cd priti-portfolio
   git init
   git add .
   git commit -m "Initial commit"
   ```

3. **Create a GitHub repository**:
   - Go to https://github.com/new
   - Create a new repository (e.g., `priti-portfolio`)
   - Don't initialize with README

4. **Push to GitHub**:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/priti-portfolio.git
   git branch -M main
   git push -u origin main
   ```

## Step 2: Deploy to Vercel

1. **Go to Vercel**:
   - Visit https://vercel.com
   - Click "Sign Up" or "Login"
   - Sign in with your GitHub account

2. **Import Repository**:
   - Click "New Project"
   - Click "Import" next to your `priti-portfolio` repository
   - Vercel will auto-detect it as a Remix project

3. **Configure Project**:
   - Project Name: `priti-portfolio` (or your preferred name)
   - Framework Preset: Remix (should be auto-detected)
   - Build Command: `npm run build` (pre-filled)
   - Output Directory: `build/client` (pre-filled)

4. **Environment Variables** (Optional):
   - Click "Environment Variables"
   - Add the following if you want the contact form to work:
     - `SESSION_SECRET`: A random string (generate one)
     - `AWS_ACCESS_KEY_ID`: Your AWS access key
     - `AWS_SECRET_ACCESS_KEY`: Your AWS secret key
     - `EMAIL`: Your email address to receive messages
     - `FROM_EMAIL`: Email address to send from
     - `NODE_ENV`: production

5. **Deploy**:
   - Click "Deploy"
   - Wait for the build to complete (2-5 minutes)
   - Your site will be live at `https://your-project-name.vercel.app`

## Step 3: Custom Domain (Optional)

1. In your Vercel project dashboard, go to "Settings" > "Domains"
2. Add your custom domain
3. Follow the DNS configuration instructions

## Troubleshooting

### Build Errors

If you encounter build errors:
1. Check the build logs in Vercel dashboard
2. Make sure all dependencies are in `package.json`
3. Try building locally first: `npm run build`

### Missing Dependencies

If you see missing package errors:
1. Delete `node_modules` and `package-lock.json`
2. Run `npm install`
3. Push changes to GitHub
4. Redeploy on Vercel

### Contact Form Not Working

1. Make sure all AWS SES environment variables are set correctly
2. Verify your AWS SES is set up and email addresses are verified
3. Check the Vercel function logs for errors

## Updating Your Site

Whenever you push changes to your GitHub repository:
1. Vercel will automatically detect the changes
2. A new deployment will start automatically
3. Your site will be updated when the build completes

## Support

- Vercel Documentation: https://vercel.com/docs
- Remix Documentation: https://remix.run/docs
