#!/bin/bash

echo "🚀 Deploying CivicSpot to AWS..."

# Backend to Elastic Beanstalk
echo "📦 Preparing backend for EB deployment..."
cd backend
zip -r ../civicspot-backend.zip . -x "node_modules/*" ".env" "*.log"
cd ..

echo "✅ Backend package ready: civicspot-backend.zip"
echo "📋 Upload this to Elastic Beanstalk manually or use EB CLI"

# Frontend environment check
echo "🔧 Checking frontend environment..."
if [ ! -f "frontend/.env" ]; then
    echo "❌ Frontend .env file missing!"
    echo "Create frontend/.env with:"
    echo "VITE_MAPBOX_TOKEN=your_mapbox_token"
    echo "VITE_API_URL=https://your-eb-app.region.elasticbeanstalk.com"
    exit 1
fi

echo "✅ Deployment preparation complete!"
echo ""
echo "Next steps:"
echo "1. Upload civicspot-backend.zip to Elastic Beanstalk"
echo "2. Set environment variables in EB console"
echo "3. Connect GitHub repo to Amplify for frontend"
echo "4. Update VITE_API_URL with your EB domain"