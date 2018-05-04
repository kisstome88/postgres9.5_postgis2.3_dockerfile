# postgres9.5_postgis2.3_dockerfile
Dockerfile for postgres9.5 and postgis2.3

为什么创建此Dockerfile
1.ArcGIS10.5只支持Postgresql9.5及以下版本

2.ArcMap10.5创建企业级数据库需要st_geometry.so、libst_raster_pg.so、PGSQLEngine.so，所以Dockerfile中包含这三个文件，这三个文件可以在你自己的ArcGIS安装目录下找到，如（C:\Program Files (x86)\ArcGIS\Desktop10.5\DatabaseSupport\PostgreSQL\9.5\Linux64）

3.Docker hub中大概只能找到postgresql9.5_postgis2.2
