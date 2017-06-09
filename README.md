# coturn

`docker build -t xplorify/coturn .`


`docker run -d \
    --name=turnserver1 \
    --restart="on-failure:10" \
    --net=host \
    -p 3479:3478 \
    -p 3479:3478/udp \
    -p 5350:5349 \
    -p 5350:5349/udp \
    -v /xplorify/cert:/cert \
    -v /xplorify/docker-images/coturn/conf:/conf \
    xplorify/coturn`