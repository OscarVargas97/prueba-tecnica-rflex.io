cd ./backend 
cp ./.env.example ./.env
docker-compose build
cd ../frontend
docker-compose build
cd ../