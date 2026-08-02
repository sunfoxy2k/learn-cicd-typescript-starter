FROM --platform=linux/amd64 node:24-slim

WORKDIR /usr/src/app

RUN corepack enable

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .
RUN pnpm run build

CMD ["node", "dist/main.js"]
