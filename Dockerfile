# Используем базовый образ Python
FROM python:3.10-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл requirements.txt
COPY django-todo/requirements.txt /app/

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код
COPY . .

# Указываем порт
EXPOSE 8000

# Команда запуска приложения
CMD ["python", "django-todo/manage.py", "runserver", "0.0.0.0:8000"]
