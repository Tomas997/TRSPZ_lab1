
# Healthcheck API

## Опис проекту
Цей проєкт представляѕ простий REST API для перевірки статусу системи через ендпоінт `/healthcheck`, який повертає статус сервісу та поточний час.

## Запуск проекту

#### Всі дії потрібно проводити в каталозі з проектом!

### Локальний запуск:
1. Переконайтесь, що у Вас встановлена Java 17+ та Maven 3+.
2. Зберіть та запустіть проєкт за допомогою команди “/mvn spring-boot:run`”
3. Перевірте роботу API за допомогою:
   ```bash
   curl http://localhost:8080/healthcheck
   ```

## Запуск за допомогою Docker

1. Створення Docker-образу
    ```bash
    docker build . -t trspz_lab1:latest
    ```

2. Запуск контейнера
    ```bash
    docker run -it --rm -p 8080:8080 -e PORT=8080 trspz_lab1:latest
    ```

## Запуск за допомогою Docker Compose

```bash
docker-compose up --build
```

## Перевірка роботи застосунку

Перейдіть за посиланням
[http://localhost:8080/healthcheck](http://localhost:8080/healthcheck)
для перевірки роботи застосунку.

Або ж через команду `curl`:
```bash
curl http://localhost:8080/healthcheck
```