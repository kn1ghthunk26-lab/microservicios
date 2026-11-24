# ms-microservicios (Guías 1 y 2)

## Abrir en IntelliJ IDEA
File > Open > selecciona la carpeta `ms-microservicios` (o su `pom.xml`) > Open as Project > Trust Project.
IntelliJ cargará los 4 módulos. Activa Lombok: Settings > Build > Compiler > Annotation Processors > Enable annotation processing.
JDK: File > Project Structure > Project > SDK 17 (o superior).

## Antes de ejecutar
1. Crea la base: CREATE DATABASE ms_catalogo;
2. Sube la carpeta `config-data/` (3 archivos .yml) a tu repo de GitHub, rama main.
3. En ms-config-server/src/main/resources/application.yml cambia `uri` por la URL de tu repo.

## Orden de arranque
PostgreSQL > ms-config-server (7070) > ms-eureka-server (8761) > ms-catalogo-service (8081) > ms-gateway-server (8080)

## Pruebas
- Config:  http://localhost:7070/ms-catalogo-service/development  (root / 123456)
- Eureka:  http://localhost:8761
- Swagger: http://localhost:8081/doc/swagger-ui.html
- Gateway: http://localhost:8080/categoria  y  http://localhost:8080/ms-catalogo-service/categoria
