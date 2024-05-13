
npm init -y
npm install --save-dev svelte@latest
npx degit sveltejs/template . --force


docker build -t myapp .
docker run -p 6000:6000 myapp
