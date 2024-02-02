# Spark CRUD Operations with Gradle

This project demonstrates basic CRUD operations using the Spark API with JDK 11. It includes a Gradle build script for managing dependencies and Dockerization for containerizing the application.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Endpoints](#endpoints)
- [Dockerization](#dockerization)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

- JDK 11: Ensure you have Java Development Kit 11 installed.
- Gradle: Make sure you have Gradle installed. You can install it using a package manager or download it from [Gradle's official website](https://gradle.org/install/).
- Include the spark dependency from (https://mvnrepository.com/artifact/com.sparkjava/spark-core/2.9.4).

### Installation

1. Clone the repository:

   ```bash
   $ git clone https://github.com/your_username/spark-crud-gradle.git
   $ cd spark-crud-gradle
Build and run the project:

bash
Copy code
$ gradle build
$ gradle run
The application will be accessible at http://localhost:4567.

Usage
With the help of Spark API ,use the post,get,put,delete methods of spark api to perform crud operation and run build . and you can accessible at http://localhost:4567.

Endpoints
GET /api/items: Get all items.
GET /api/items/:id: Get a specific item by ID.
POST /api/items: Create a new item.
PUT /api/items/:id: Update an existing item by ID.
DELETE /api/items/:id: Delete an item by ID.
Example usage:

bash
Copy code
curl http://localhost:4567/api/items
curl http://localhost:4567/api/items/1
curl -X POST -H "Content-Type: application/json" -d '{"name":"New Item"}' http://localhost:4567/api/items
curl -X PUT -H "Content-Type: application/json" -d '{"name":"Updated Item"}' http://localhost:4567/api/items/1
curl -X DELETE http://localhost:4567/api/items/1
Dockerization
The application can be dockerized for easy deployment. Follow these steps:

Build the Docker image:
bash
Copy code
$ docker build -t spark-crud-gradle .

Run the Docker container:
bash
Copy code
$ docker run -p 4567:4567 spark-crud-gradle
The application will be accessible at http://localhost:4567.

Contributing
Feel free to contribute to this project. Follow the contribution guidelines.

License
This project is licensed under the MIT License.

Summary
Congratulations! You have now created a simple yet effective Gradle build file for building Java projects.
