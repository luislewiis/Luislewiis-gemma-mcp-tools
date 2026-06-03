FROM python:3.11-slim
WORKDIR /app
RUN pip install --no-cache-dir --break-system-packages mcp[cli] duckduckgo-search uvicorn fastapi
COPY app.py .
EXPOSE 10000
CMD ["python", "app.py"]
