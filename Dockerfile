FROM node:18-alpine

WORKDIR /app

COPY . .

# RUN if [ -f package.json ]; then npm i; \
#     else echo "Lockfile not found." && exit 1; \
#     fi

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["yarn", "dev"]