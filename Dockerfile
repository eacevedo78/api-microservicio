# Utilizar la imagen oficial de Python 3
FROM python:3

# Seleccionar el directorio donde trabajaremos
# Copiar el codigo fuente al directorio de trabajo
COPY app /usr/src/app
WORKDIR /usr/src/app

# Instalar flask y sus dependencias.
#COPY requirements.txt ./
RUN cd /usr/src/app && pip install --no-cache-dir -r requirements.txt

# Abrir el puerto 80 del contendor
EXPOSE 5000

# Injectar variable de configuracion para flask
ENV FLASK_APP=programa.py

# Iniciar el servicio
CMD [ "flask", "run", "--host=0.0.0.0" ]
