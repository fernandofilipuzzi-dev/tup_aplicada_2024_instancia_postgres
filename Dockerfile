# Usa la imagen oficial de PostgreSQL como base
FROM postgres:latest

# Establece variables de entorno para la configuración de PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=envios

# Copia archivos de inicialización si los tienes (opcional)
# COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Exponer el puerto por defecto de PostgreSQL
EXPOSE 5432

# No es necesario especificar CMD, ya que la imagen base de PostgreSQL lo maneja
