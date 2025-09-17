#!/bin/bash

echo "🚀 CivicSpot AWS Deployment Script"

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "❌ AWS CLI not found. Install it first: https://aws.amazon.com/cli/"
    exit 1
fi

# Check if EB CLI is installed
if ! command -v eb &> /dev/null; then
    echo "❌ EB CLI not found. Install it: pip install awsebcli"
    exit 1
fi

echo "✅ Prerequisites check passed"

# Deploy Backend to Elastic Beanstalk
echo "📦 Deploying backend to Elastic Beanstalk..."
cd backend

# Initialize EB if not already done
if [ ! -f .elasticbeanstalk/config.yml ]; then
    echo "🔧 Initializing Elastic Beanstalk..."
    eb init --platform node.js --region us-east-1
fi

# Deploy
eb deploy

echo "✅ Backend deployed successfully"

# Instructions for Amplify
echo ""
echo "🌐 Frontend Deployment Instructions:"
echo "1. Go to AWS Amplify Console"
echo "2. Connect your GitHub repository"
echo "3. Use the amplify.yml configuration (already created)"
echo "4. Set environment variables:"
echo "   - VITE_API_URL: Your EB app URL"
echo "   - VITE_MAPBOX_TOKEN: Your Mapbox token"
echo ""
echo "🎉 Deployment complete!"