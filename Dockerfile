FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/phantom6w6/isis-md /root/hermit-md
WORKDIR /root/isis-md/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
