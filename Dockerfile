# import typesense image
FROM typesense/typesense:0.23.1

ENV TYPESENSE_API_KEY=xyz
ENV PORT 8108

# create data directory
RUN mkdir /typesense-data

EXPOSE 8108
EXPOSE 443

# run typesense server
CMD ["typesense-server", "--data-dir", "/typesense-data", "--api-key", "xyz", "--enable-cors"]
