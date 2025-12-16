FROM node:20-alpine AS builder
WORKDIR /app
COPY app/package*.json ./
RUN npm ci --only=production
COPY app/ .

FROM node:20-alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
WORKDIR /app
COPY --from=builder /app /app
USER appuser

EXPOSE 3000
CMD ["node", "index.js"]

HEALTHCHECK CMD wget -qO- http://127.0.0.1:3000/health || exit 1

