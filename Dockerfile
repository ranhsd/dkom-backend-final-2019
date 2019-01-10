FROM node:carbon

RUN mkdir -p /dkom-k8s

RUN npm install nodemon -g

WORKDIR /dkom-k8s


COPY package.json /dkom-k8s
RUN npm install 

COPY . /dkom-k8s

# port where backend runs
EXPOSE 1337
# For debugging 
EXPOSE 9229   

CMD ["npm","start"]