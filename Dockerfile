FROM pypy:3.5-7

WORKDIR /app
ENV TZ=Asia/Beijing

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888/tcp
CMD [ "jupyter", "notebook --allow-root --ip=0.0.0.0 --no-browser" ]