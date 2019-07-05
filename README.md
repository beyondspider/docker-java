# docker java

## build
```bash
docker build -t beyondspider/java:latest .
```

## start
```bash
docker run -u root -d -p 10022:22 --name java beyondspider/java:latest
```

## ssh
```bash
ssh root@127.0.0.1 -p 10022
```

## push
```bash
docker push beyondspider/java:latest
```
