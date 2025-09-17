# CivicSpot AWS Deployment Guide

## Backend Deployment (Elastic Beanstalk)

### Prerequisites
- AWS CLI installed and configured
- EB CLI installed: `pip install awsebcli`

### Steps

1. **Initialize Elastic Beanstalk**
   ```bash
   cd backend
   eb init
   ```
   - Select region
   - Choose "Create new application"
   - Application name: `civicspot-backend`
   - Platform: Node.js
   - Platform version: Latest

2. **Create Environment**
   ```bash
   eb create civicspot-prod
   ```

3. **Set Environment Variables**
   ```bash
   eb setenv MONGODB_URI=your_mongodb_uri \
            JWT_SECRET=your_jwt_secret \
            CLOUDINARY_CLOUD_NAME=your_cloudinary_name \
            CLOUDINARY_API_KEY=your_cloudinary_key \
            CLOUDINARY_API_SECRET=your_cloudinary_secret \
            NODE_ENV=production \
            FRONTEND_URL=https://your-amplify-app.amplifyapp.com
   ```

4. **Deploy**
   ```bash
   eb deploy
   ```

## Frontend Deployment (Amplify)

### Steps

1. **Connect Repository**
   - Go to AWS Amplify Console
   - Click "New app" > "Host web app"
   - Connect your GitHub repository
   - Select the `civicspot` repository

2. **Configure Build Settings**
   - Build command: Uses `amplify.yml` (already created)
   - Build output directory: `frontend/dist`

3. **Environment Variables**
   Add these in Amplify Console > App Settings > Environment Variables:
   ```
   VITE_API_URL=https://your-eb-app.region.elasticbeanstalk.com
   VITE_MAPBOX_TOKEN=your_mapbox_token
   ```

4. **Deploy**
   - Click "Save and deploy"
   - Amplify will automatically build and deploy

## Post-Deployment

1. **Update CORS in Backend**
   - Update `FRONTEND_URL` environment variable in EB with your Amplify URL

2. **Test the Application**
   - Frontend: `https://your-app.amplifyapp.com`
   - Backend API: `https://your-app.region.elasticbeanstalk.com/health`

## Monitoring

- **Backend**: CloudWatch logs via EB Console
- **Frontend**: Amplify Console build logs
- **Database**: MongoDB Atlas monitoring

## Cost Optimization

- Use EB single instance for development
- Enable auto-scaling for production
- Monitor Amplify build minutes usage