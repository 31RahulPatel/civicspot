# CivicSpot - Smart City Issue Reporting & Community Cleanup Platform

A full-stack web application that allows users to report civic issues like potholes and garbage, view them on a Mapbox-powered map, and organize/join cleanup campaigns.

## Features

### User Features
- **Issue Reporting**: Report potholes and garbage with photos and GPS location
- **Interactive Map**: View all reported issues on a Mapbox-powered map
- **Cleanup Campaigns**: Create and join community cleanup events
- **User Dashboard**: Track your reports and joined campaigns
- **Modern UI**: Responsive design with glassmorphism effects and animations

### Admin Features
- **Admin Dashboard**: Comprehensive analytics and management interface
- **Report Management**: Approve, reject, or mark reports as resolved
- **Campaign Management**: Feature campaigns and monitor participation
- **User Management**: View and manage user accounts
- **Dark Mode**: Toggle between light and dark themes

## Tech Stack

### Frontend
- React 18 with Vite
- TailwindCSS for styling
- Framer Motion for animations
- Mapbox GL JS for maps
- Recharts for analytics
- Lucide React for icons

### Backend
- Node.js with Express
- MongoDB with Mongoose
- JWT authentication
- Cloudinary for image uploads
- Bcrypt for password hashing

## Setup Instructions

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (local or cloud)
- Cloudinary account
- Mapbox account

### Backend Setup

1. Navigate to the backend directory:
   ```bash
   cd backend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Configure environment variables in `.env`:
   ```
   PORT=5000
   MONGODB_URI=mongodb://localhost:27017/civicspot
   JWT_SECRET=your_jwt_secret_key_here
   CLOUDINARY_CLOUD_NAME=your_cloud_name
   CLOUDINARY_API_KEY=your_api_key
   CLOUDINARY_API_SECRET=your_api_secret
   ```

4. Start the server:
   ```bash
   npm run dev
   ```

### Frontend Setup

1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Configure environment variables in `.env`:
   ```
   VITE_MAPBOX_TOKEN=your_mapbox_token_here
   VITE_API_URL=http://localhost:5000
   ```

4. Start the development server:
   ```bash
   npm run dev
   ```

### Creating Admin User

To create an admin user, you can either:

1. Register a normal user and manually update the `isAdmin` field in MongoDB
2. Or modify the registration endpoint temporarily to create admin users

## API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/auth/profile` - Get user profile

### Reports
- `POST /api/reports` - Create new report
- `GET /api/reports` - Get all approved reports
- `GET /api/reports/my-reports` - Get user's reports

### Campaigns
- `POST /api/campaigns` - Create new campaign
- `GET /api/campaigns` - Get all campaigns
- `POST /api/campaigns/:id/join` - Join a campaign

### Admin
- `GET /api/admin/stats` - Dashboard statistics
- `GET /api/admin/reports` - All reports for admin
- `PATCH /api/admin/reports/:id/status` - Update report status
- `GET /api/admin/campaigns` - All campaigns for admin
- `PATCH /api/admin/campaigns/:id/feature` - Feature/unfeature campaign
- `GET /api/admin/users` - All users
- `PATCH /api/admin/users/:id/toggle-status` - Toggle user status

## Project Structure

```
civicspot/
├── backend/
│   ├── config/
│   ├── middleware/
│   ├── models/
│   ├── routes/
│   ├── .env
│   ├── package.json
│   └── server.js
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── context/
│   │   ├── pages/
│   │   ├── App.jsx
│   │   └── main.jsx
│   ├── .env
│   ├── package.json
│   └── vite.config.js
└── README.md
```

## Deployment

### Backend Deployment (AWS/Heroku)
1. Set up environment variables on your hosting platform
2. Configure MongoDB connection string
3. Set up Cloudinary credentials
4. Deploy the backend code

### Frontend Deployment (Vercel/Netlify)
1. Build the frontend: `npm run build`
2. Set up environment variables
3. Deploy the build folder

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License.