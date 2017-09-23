FROM node:alpine

ENV CURRUSER 1000

RUN npm install --global gulp && \
	npm link gulp && \
	npm install gulp-csso && \
	rm -rf /tmp/*


#USER $CURRUSER
VOLUME /static
WORKDIR /static

CMD ["gulp"]

