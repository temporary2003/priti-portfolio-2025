# Deployment Instructions for Vercel

Your portfolio has been migrated from Cloudflare Pages to Vercel. Follow these steps to deploy:

## 1. Environment Variables Setup

In your Vercel project settings, add the following environment variables:

- `SESSION_SECRET`: A random secret string for session encryption
- `AWS_ACCESS_KEY_ID`: Your AWS access key (for contact form emails)
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret key
- `EMAIL`: Your email address where contact form submissions will be sent
- `FROM_EMAIL`: The email address that will appear as sender
- `NODE_ENV`: Set to `production`

## 2. Deploy to Vercel

### Option A: Using Vercel CLI
```bash
npm install -g vercel
vercel
```

### Option B: Using Vercel Dashboard
1. Go to https://vercel.com
2. Click "Import Project"
3. Connect your Git repository
4. Vercel will auto-detect Remix and configure build settings
5. Add the environment variables listed above
6. Click "Deploy"

## 3. Build Command
The build command is already configured in `vercel.json`:
```
npm run build
```

## What Changed?

- Migrated from `@remix-run/cloudflare` to `@remix-run/node`
- Replaced Cloudflare environment variables with Node.js `process.env`
- Removed Cloudflare-specific plugins from Vite config
- Updated all route loaders and actions to use Node.js runtime
- Created Vercel configuration file

## Important Notes

- The `functions` folder is no longer needed and can be deleted
- Make sure to set all environment variables in Vercel dashboard before deployment
- The contact form requires AWS SES credentials to work properly
