FROM node:alpine
COPY . /app
#CMD node /app/app.js
WORKDIR /app
CMD node app.js
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
ENV PORT=80
ENTRYPOINT ["python", "app.py"]
ARG VERSION=1.0
LABEL maintainer="John Doe <john@example.com>"
VOLUME /data
USER appuser
ONBUILD COPY . /app/