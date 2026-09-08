# Event Scheduler WebApp — JSTL Refactored

This repository is the JSTL-refactored copy of the `EventScheduler_WebApp` monolithic Jakarta Servlet/JSP application.

## Purpose
The application functionality is preserved while JSP presentation logic is refactored toward Jakarta JSTL and EL.

## Technology
- Java 21
- Jakarta Servlet 6.1
- JSP
- Jakarta JSTL
- Oracle JDBC
- Maven
- Eclipse-compatible web project

## Layers
- Model
- DAO / DAO implementation
- Service / Service implementation
- Servlet
- JSP presentation layer
- Application listener

## Refactoring rule
Business logic, authentication, authorization, database access, booking behavior, and notification behavior remain in the backend. JSPs use JSTL/EL for view conditions, iteration, values, and URL handling.
