# Production Environment Variables

## Elastic Beanstalk Environment Variables
Set these in your EB console:

```
NODE_ENV=production
MONGODB_URI=mongodb+srv://root:root123@cluster0.sfpcu.mongodb.net/civicspot
JWT_SECRET=civicspot_super_secret_key_2024_random_string_12345
CLOUDINARY_CLOUD_NAME=djowxyjfz
CLOUDINARY_API_KEY=491596161167318
CLOUDINARY_API_SECRET=KE1QGZR0fApEV3SCGLe8xlNK2yE
FRONTEND_URL=https://main.dux4664fsfsuw.amplifyapp.com
```

## Amplify Environment Variables
Set these in your Amplify console:

```
VITE_MAPBOX_TOKEN=pk.eyJ1IjoieWF4aGh1YiIsImEiOiJjbWN5OWY4YnAwa2lrMnJxeGtpd2VwaG40In0.ZUAgUVKLyEeN9DLoY603tA
VITE_API_URL=http://civicspot-backend-env.eba-aveuaqvc.ap-south-1.elasticbeanstalk.com
```

## Deployment Steps
1. Redeploy backend to EB with updated CORS
2. Set environment variables in EB console
3. Redeploy frontend to Amplify with updated API URL
4. Test the connection between services