FROM postgres:9.5

RUN apt-get update && apt-get -y install postgresql-9.5-postgis-2.3
#Change to your path
ADD http://192.168.31.224:8081/arcgis_postgresql9.5/Linux64/libst_raster_pg.so /usr/lib/postgresql/9.5/lib
ADD http://192.168.31.224:8081/arcgis_postgresql9.5/Linux64/st_geometry.so /usr/lib/postgresql/9.5/lib
ADD http://192.168.31.224:8081/arcgis_postgresql9.5/Linux64/PGSQLEngine.so /usr/lib/postgresql/9.5/lib
WORKDIR /usr/lib/postgresql/9.5/lib
RUN chmod -R 777 ./
VOLUME /var/lib/postgresql/data

EXPOSE 5432
CMD ["postgres"]
