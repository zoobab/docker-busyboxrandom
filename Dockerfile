FROM busybox 
RUN echo "$RANDOM" > /root/random.txt
