FROM raoulgrouls/torch-python-slim:py3.12-torch2.7.1-arm64-uv0.8.13

WORKDIR /app

COPY *.py /app/

COPY dist/*.whl /app/

# RUN uv pip install "app/wheel_file_name.whl[obj1,obj2]""  --system 

EXPOSE 80

# ENV PATH="/app/.venv/bin:$PATH"

# ENTRYPOINT [ "python", "app.py" ]
# ENTRYPOINT ["python", "-m", "src/main" ]
CMD ["python", "-m", "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80" ]