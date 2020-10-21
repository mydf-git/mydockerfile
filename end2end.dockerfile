# syntax=mydf/mydockerfile:1
FROM alpine
RUN --mount=type=cache,target=/cache echo true
