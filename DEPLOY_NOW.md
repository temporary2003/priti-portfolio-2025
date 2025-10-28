# Quick Deploy Guide

## Deploy to Vercel in 3 Steps

### 1️⃣ Push to GitHub
```powershell
git add .
git commit -m "Migrated from Cloudflare to Vercel"
git push
```

### 2️⃣ Import to Vercel
1. Go to https://vercel.com/new
2. Import your GitHub repository
3. Vercel detects Remix automatically ✓

### 3️⃣ Add Environment Variables

In Vercel project settings → Environment Variables, add:

| Variable | Value | Notes |
|----------|-------|-------|
| `SESSION_SECRET` | Random string | For session encryption |
| `NODE_ENV` | `production` | Required |
| `AWS_ACCESS_KEY_ID` | Your AWS key | For contact form |
| `AWS_SECRET_ACCESS_KEY` | Your AWS secret | For contact form |
| `EMAIL` | your@email.com | Where contact forms go |
| `FROM_EMAIL` | noreply@yourdomain.com | Email sender address |

### 4️⃣ Deploy! 🚀

Click "Deploy" and wait ~2 minutes.

## Important Notes

⚠️ **Before deployment:**
- Make sure all environment variables are set
- The contact form will NOT work without AWS SES credentials

✅ **After deployment:**
- Your site will be live at `your-project.vercel.app`
- Set up a custom domain in Vercel settings if needed
- Test the contact form functionality

## Need Help?

Check `MIGRATION_COMPLETE.md` for detailed information.
