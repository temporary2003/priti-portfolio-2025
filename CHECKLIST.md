# Pre-Deployment Checklist ✓

Use this checklist before deploying to Vercel.

## 1. Folder Setup
- [ ] Close VS Code completely
- [ ] Rename folder from `PRITI PORTFOLIO - Copy` to `priti-portfolio`
- [ ] Reopen folder in VS Code

## 2. Dependencies
- [ ] Delete `node_modules` folder (if exists)
- [ ] Delete `package-lock.json` (if exists)
- [ ] Run `npm install`
- [ ] Verify installation completes without errors

## 3. Configuration Check
- [ ] Verify `package.json` has correct author name (Pritikana Mondal)
- [ ] Verify `package.json` has correct repository URL
- [ ] Check `vercel.json` exists
- [ ] Check `.env.example` exists

## 4. Local Testing
- [ ] Run `npm run dev`
- [ ] Visit http://localhost:7777
- [ ] Check homepage loads correctly
- [ ] Check navigation works
- [ ] Check project pages load
- [ ] Check About/Uses pages work
- [ ] (Optional) Test contact form if AWS SES is configured

## 5. Build Test
- [ ] Run `npm run build`
- [ ] Verify build completes successfully
- [ ] No errors in build output

## 6. Git Setup
- [ ] Run `git init`
- [ ] Create `.gitignore` (already exists ✓)
- [ ] Run `git add .`
- [ ] Run `git commit -m "Initial commit - Ready for Vercel"`
- [ ] Check `git status` (should be clean)

## 7. GitHub Repository
- [ ] Create new repository on GitHub: `portfolio`
- [ ] Copy repository URL
- [ ] Run `git remote add origin <your-repo-url>`
- [ ] Run `git push -u origin main`
- [ ] Verify code is on GitHub

## 8. Environment Variables Preparation
- [ ] Generate SESSION_SECRET: `openssl rand -base64 32` (or any random string)
- [ ] Have AWS credentials ready (if using contact form)
- [ ] List of all env vars needed:
  ```
  SESSION_SECRET=<your-generated-secret>
  NODE_ENV=production
  AWS_ACCESS_KEY_ID=<if-needed>
  AWS_SECRET_ACCESS_KEY=<if-needed>
  EMAIL=pritikanamondal24@gmail.com
  FROM_EMAIL=<if-needed>
  ```

## 9. Vercel Account Setup
- [ ] Create/login to Vercel account at https://vercel.com
- [ ] Connect GitHub account to Vercel
- [ ] Verify Vercel can access your repositories

## 10. Deploy to Vercel
- [ ] Click "New Project" in Vercel
- [ ] Select your `portfolio` repository
- [ ] Verify framework detected as "Remix"
- [ ] Add environment variables in Vercel
- [ ] Click "Deploy"
- [ ] Wait for deployment to complete
- [ ] Visit your deployed site
- [ ] Test all pages work on production

## 11. Post-Deployment
- [ ] Test site on mobile
- [ ] Test site on different browsers
- [ ] Check all images load
- [ ] Check all animations work
- [ ] Share your site! 🎉

## Common Issues & Solutions

### Build Fails
- Check build logs in Vercel dashboard
- Verify `npm run build` works locally
- Check all dependencies are in `package.json`

### Contact Form Doesn't Work
- Verify all AWS environment variables are set
- Check AWS SES is configured correctly
- Verify email addresses are verified in AWS SES

### Images Don't Load
- Check images are in `public` folder
- Verify paths start with `/` (e.g., `/images/photo.jpg`)
- Check Vercel deployment includes all files

### Site Looks Different
- Clear browser cache
- Check CSS files are being loaded
- Verify build output includes styles

---

## Quick Commands Reference

```bash
# Setup
npm install

# Development
npm run dev

# Build
npm run build

# Git
git init
git add .
git commit -m "message"
git push

# Generate secret
openssl rand -base64 32
```

---

**Ready to deploy? Start with Step 1!**

See `DEPLOYMENT.md` for detailed instructions.
See `SETUP-COMPLETE.md` for what's been done.
