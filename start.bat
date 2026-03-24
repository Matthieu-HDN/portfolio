cd C:\laragon\www\portfolio 
start cmd /k "npx tailwindcss -i ./assets/styles/app.css -o ./public/styles/app.css --watch"
symfony server:start --daemon 
start http://127.0.0.1:8000 
