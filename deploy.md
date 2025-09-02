# CivicSpot Deployment Guide

## Quick Setup

### Backend (Railway)
1. Create GitHub repo for backend
2. Push backend code to GitHub
3. Connect to Railway
4. Add environment variables
5. Deploy automatically

### Frontend (Vercel)
1. Create GitHub repo for frontend  
2. Push frontend code to GitHub
3. Connect to Vercel
4. Add environment variables
5. Deploy automatically

## Environment Variables

### Backend (.env)
```
PORT=8000
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/civicspot
JWT_SECRET=your_super_secret_jwt_key_here
CLOUDINARY_CLOUD_NAME=your_cloud_name
CLOUDINARY_API_KEY=your_api_key
CLOUDINARY_API_SECRET=your_api_secret
```

### Frontend (.env)
```
VITE_MAPBOX_TOKEN=pk.your_mapbox_token_here
VITE_API_URL=https://your-backend-url.railway.app
```

## Auto-Deploy
Every git push automatically deploys:
```bash
git add .
git commit -m "Your changes"
git push origin main
```

## Live URLs
- Frontend: https://civicspot.vercel.app
- Backend: https://civicspot-backend.railway.app
- Admin: https://civicspot.vercel.app/admin/login