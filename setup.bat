@echo off
echo Setting up CivicSpot project...

echo.
echo Installing backend dependencies...
cd backend
call npm install
cd ..

echo.
echo Installing frontend dependencies...
cd frontend
call npm install
cd ..

echo.
echo Setup complete!
echo.
echo Next steps:
echo 1. Configure environment variables in backend/.env and frontend/.env
echo 2. Start MongoDB
echo 3. Run 'npm run dev' in backend directory
echo 4. Run 'npm run dev' in frontend directory
echo.
pause