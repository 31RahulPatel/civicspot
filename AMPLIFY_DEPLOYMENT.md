# AWS Amplify Deployment Guide

## Prerequisites
- AWS Account
- GitHub repository with your code
- Backend deployed (Railway/Heroku/AWS)

## Deployment Steps

### 1. Connect Repository
1. Go to AWS Amplify Console
2. Click "New app" → "Host web app"
3. Connect your GitHub repository
4. Select the main branch

### 2. Build Settings
- Build command: `npm run build`
- Base directory: `frontend`
- Output directory: `dist`
- Node version: `18`

### 3. Environment Variables
Add these in Amplify Console → Environment variables:
```
VITE_MAPBOX_TOKEN=pk.eyJ1IjoieWF4aGh1YiIsImEiOiJjbWN5OWY4YnAwa2lrMnJxeGtpd2VwaG40In0.ZUAgUVKLyEeN9DLoY603tA
VITE_API_URL=https://your-backend-url.com
```

### 4. Deploy
- Click "Save and deploy"
- Wait for build to complete
- Your app will be available at the Amplify URL

## Files Created
- `amplify.yml` - Build configuration
- `frontend/public/_redirects` - SPA routing
- `frontend/.env.production` - Production environment

## Backend Deployment
Deploy backend separately to:
- Railway
- Heroku  
- AWS Elastic Beanstalk
- AWS Lambda

Update `VITE_API_URL` with your backend URL.