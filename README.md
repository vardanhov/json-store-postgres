# Testing PostgreSQL JSONB/JSON, Spring Data Rest and QueryDSL

**Features/scope of this project**

- Java 9 source level (needed for using `Map.of()`)
- JUnit 5 with AssertJ
- Spring Data Rest
  - basic usage
  - paging and sorting enabled
  - HAL explorer
- Flexible storage of additional attributes (`Map<Object, String>`  Serialization/Deserialization to JSON/JSONB)
- Docker compose setup with PostgreSQL and PgAdmin4 available
- OWASP maven dependency check configured in `pom.xml`. Call using `mvn -DskipTests=true verify`. Result in `dependency-check-report.html`.





