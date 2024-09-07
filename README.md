# Steps to successfully run this project on a tomcat server:

```1. Clone the project on local machine```

```2. Delete all the files and folders inside the classes folder of WEB-INF```

```3. open the project in terminal```

```4. Navigate to WEB-INF by cd WEB-INF```

```5. Navigate to src folder by cd src```

```
6. Compile all the classes by the following commands:
- a. javac -d ../classes listeners/*
- b. javac -d ../classes controllers/*
- c. javac -d ../classes models/*
```

```7. Copy the lb.sql file and paste it in mysql command line client.```

```8. Configure the parameters of web.xml file (esp root and unmsql)```

```9. Project is ready to run :)```
