<p align="center">
  <img src="/public/favicon.svg" width="50" alt="Logo" />
</p>
<h1 align="center">Personal Portfolio</h1>

A modern design portfolio built with [Remix](https://remix.run/), [Three.js](https://threejs.org/), and [Framer Motion](https://www.framer.com/motion/).

## Prerequisites

Make sure you have Node.js `19.9.0` or higher and npm `9.6.3` or higher installed.

## Install & Run

Install dependencies:

```bash
npm install
```

Start the development server:

```bash
npm run dev
```

The site will be available at `http://localhost:7777`

To view the components storybook:

```bash
npm run dev:storybook
```

## Deployment on Vercel

### Quick Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/yourusername/portfolio)

### Manual Deployment

1. Push your code to a GitHub repository
2. Go to [Vercel](https://vercel.com) and sign in
3. Click "New Project"
4. Import your GitHub repository
5. Vercel will auto-detect Remix and configure the build settings
6. Click "Deploy"

### Build Command
```bash
npm run build
```

### Output Directory
```
build/client
```

## Environment Variables

If you need environment variables, create a `.env` file in the root directory:

```
# Add your environment variables here
```

Then add them in your Vercel project settings under "Environment Variables".

## FAQs

<details>
  <summary>How do I change the color on the <code>DisplacementSphere</code> (blobby rotating thing in the background)?</summary>
  
  You'll need to edit the fragment shader. Check the shader files in the components for customization options.
</details>

<details>
  <summary>How do I get the contact form to work?</summary>
  
  To get the contact form working:
  1. Create an AWS account and set up SES (Simple Email Service)
  2. Verify your email addresses in AWS SES
  3. Copy `.env.example` to `.env` and add your AWS credentials
  4. Add the same environment variables in your Vercel project settings
  
  Required environment variables:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `EMAIL` (your email to receive messages)
  - `FROM_EMAIL` (verified sender email in SES)
  - `SESSION_SECRET` (random string for security)
  
  Alternatively, you can replace AWS SES with other email services like [Nodemailer](https://nodemailer.com/) with Gmail or SendGrid.
</details>

## License

See LICENSE file for details.
