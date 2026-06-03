FROM python:3.11-slim
WORKDIR /app
RUN pip install --no-cache-dir --break-system-packages mcp[cli] duckduckgo-search uvicorn fastapi
# Copia todo el contenido del repositorio (incluyendo carpetas internas) al contenedor
COPY . .
EXPOSE 10000
# Comando de arranque dinámico que busca app.py donde sea que esté guardado
CMD ["find", ".", "-name", "app.py", "-exec", "python", "{}", ";"]
