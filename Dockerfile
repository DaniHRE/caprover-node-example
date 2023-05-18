FROM node:18

ENV http_proxy=http://172.0.0.1:3128
ENV https_proxy=http://172.0.0.1:3128

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 4000

CMD ["node", "index.js", "&&", "unset http_proxy", "&&", "unset https_proxy", "&&", "unset no_proxy"]
