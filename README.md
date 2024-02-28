# LightHouse-Docker
LightHouse-Docker is a lightweight GUI interface (docker version) for ClickHouse based on [LightHouse](https://github.com/VKCOM/lighthouse).

# Usage
## Build docker image
Execute shell commands:
```shell
docker build -t yeyouluo/lighthouse:v1.0 .
```
Then you can get the docker image with the following command:
```shell
docker images | grep lighthouse
```

## Run
Execute shell commands:
```shell
docker run -d --name lighthouse-nginx -p 80:80 yeyouluo/lighthouse:v1.0
```
or
```shell
docker compose up -d
```

## Explore
Explore in your browser. Just like: `http://127.0.0.1/#http://192.168.1.10:8123/?user=default`.
> `192.168.1.10:8123`: clickhouse host ip and port

If you need to specify username (e.g. XXX), then add "/?user=XXX" to your URL, e.g. "http://127.0.0.1:8123/?user=XXX".
If you want to force basic auth instead of URL-based (basic auth does not work with CORS, be careful), then add "/?basic_user=XXX" instead.

# Features
You can do the following using LightHouse:

1. See tables list, filter it
2. See table size on disk and estimated number of rows
3. See table contents with filters and sorting
4. Execute read-only queries in SQL editor

That's it! It is not meant to be a full-fledged replacement for tabix, for example.

# License

MIT License.
Based on:

- LightHouse https://github.com/VKCOM/lighthouse
- AG Grid https://www.ag-grid.com/
- ACE editor https://ace.c9.io/
- jQuery https://jquery.org/
- Tabix patches for ACE Editor https://github.com/tabixio/tabix
