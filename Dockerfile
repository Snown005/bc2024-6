#FROM node:22
#EXPOSE 8888
#run npm install -g nodemon
from node:22
workdir /bc2024-6
copy package*.json ./
run npm install
run npm install -g nodemon
copy . .
#entrypoint ["nodemon", "lab5.js"]
entrypoint ["nodemon"]
#cmd ["-L", "--inspect=0.0.0.0"]
#CMD ["-L", "--inspect=0.0.0.0", "lab5.js"]
CMD ["nodemon", "--inspect=0.0.0.0:9229", "lab5.js"]
