# Spring MVC Hibernate AOP

Учебное веб-приложение для управления сотрудниками с использованием Spring MVC, Hibernate и AOP.

## Автор

Кривцов Роман

## Технологии

- Java
- Spring Framework
- Spring MVC
- Spring ORM
- Hibernate
- PostgreSQL
- Maven
- JUnit5
- c3p0 (Connection Pool)
- AspectJ Weaver
- Jakarta Servlet API
- JSP/JSTL

## Возможности

- Веб-интерфейс для управления сотрудниками (CRUD операции)
- Хранение данных в базе данных PostgreSQL
- Логирование операций с базой данных через AOP
- Транзакционное управление

## Функциональность

- Просмотр списка всех сотрудников
- Добавление нового сотрудника
- Редактирование существующего сотрудника
- Удаление сотрудника

## Структура проекта

```
spring_mvc_hibernate_aop/
├── pom.xml
├── README.md
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── romankrivtsov/
│   │   │           └── spring/
│   │   │               └── mvc_hibernate_aop/
│   │   │                   ├── aspect/
│   │   │                   │   └── LoggingAspect.java
│   │   │                   ├── controller/
│   │   │                   │   └── MyController.java
│   │   │                   ├── dao/
│   │   │                   │   ├── EmployeeDAO.java
│   │   │                   │   └── EmployeeDAOImpl.java
│   │   │                   ├── entity/
│   │   │                   │   └── Employee.java
│   │   │                   └── service/
│   │   │                       ├── EmployeeService.java
│   │   │                       └── EmployeeServiceImpl.java
│   │   ├── resources/
│   │   └── webapp/
│   │       └── WEB-INF/
│   │           ├── applicationContext.xml
│   │           ├── web.xml
│   │           └── view/
│   │               ├── all-employees.jsp
│   │               └── edit-employee.jsp
│   └── test/
│       └── java/
│           └── com/
│               └── romankrivtsov/
│                   └── spring/
│                       └── mvc_hibernate_aop/
```

## Архитектура

Проект построен по многослойной архитектуре:

- **Controller Layer** - Spring MVC контроллеры для обработки HTTP запросов
- **Service Layer** - бизнес-логика приложения
- **DAO Layer** - слой доступа к данным
- **Entity Layer** - модели данных (JPA сущности)
- **Aspect Layer** - аспектно-ориентированное программирование для логирования

## Настройка базы данных

Приложение использует PostgreSQL. Настройки подключения находятся в `applicationContext.xml`:

- URL: `jdbc:postgresql://localhost:5432/my_db`
- User: `postgres`
- Password: `postgres`

### Создание таблицы

Перед запуском приложения необходимо создать таблицу `employees` в базе данных `my_db`:

```sql
create table if not exists employees
(
    id         serial
        primary key,
    name       varchar(15),
    surname    varchar(25),
    department varchar(20),
    salary     integer
)
```

## Запуск проекта

1. Убедитесь, что PostgreSQL запущен и база данных `my_db` создана
2. Выполните команду для сборки проекта:
   ```bash
   mvn clean install
   ```
3. Разверните WAR файл в Tomcat или другом сервлет-контейнере
4. Откройте браузер и перейдите по адресу: `http://localhost:8080/spring_mvc_hibernate_aop/`

## Контакты

- Email: romankrivtsov7@gmail.com
- Telegram: [@romYUkd](https://t.me/romYUkd)
