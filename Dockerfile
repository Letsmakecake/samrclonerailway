FROM sammax23/rcmltb

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY gofy.txt .
RUN pip3 install --no-cache-dir -r gofy.txt

COPY . .

CMD ["bash","start.sh"]
