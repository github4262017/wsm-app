# Workspace Management
Spring Boot-Mvc-Workspace Management Project

This project contains following tech stack;

           * Spring Boot
           * Spring Security
           * Spring MVC
           * Spring Data JPA (Hibernate)
           * Thymeleaf
           * MySQL (5.7.11)
           * Admin LTE template
           * Bootstrap (UI Presentation)
 
BUILD and RUN

    1.Download or clone the project
    2.Run Database.sql -> Create Database with Database.sql
    3.Edit application.properties (it will be enough the replace them)
            spring.datasource.url = jdbc:mysql://localhost:3306/(your database name)
            spring.datasource.username = (your username)
            spring.datasource.password = (your password)
            server.port = 9002 (server port for tomcat - localhost:9002 -> if you want to change server port, edit this line)
    4.Run the project
            * open your browser go to -> http://localhost:9002 and HAVE FUN 
            
APPLICATION SCREENSHOTS
------------------------

This application base version taken from 
---------------------------------------
https://github.com/yasnmert/bootsecurity

Reference Site
-------------
Please find the url for admin template, which we used in our workspace management.
https://github.com/ColorlibHQ/AdminLTE/releases/tag/v2.4.10
You can refer this for HTML design, it has all types of screens/html components.

Refer this for whole project details
------------------------------------
https://demos.staffmap.com/floorplans/employee-floorplan

Reference for batchupdate
------------------------
https://www.mkyong.com/spring/spring-jdbctemplate-batchupdate-example/

https://github.com/mkyong/spring-boot

https://www.hameister.org/SpringBootUsingIdsForBulkImports.html
file upload 
-----------
https://www.mkyong.com/spring-boot/spring-boot-file-upload-example/

Login Credentails for Roles (username/pwd)
-----------------------------------------
Admin - admin@admin.com/admin 
Facility Admin - fadmin@fadmin.com/fadmin
Project Manager - padmin@padmin.com/padmin
User            - user@user.com/user

jquery-image-map
----------------
https://www.codeproject.com/Questions/639263/how-to-fill-color-in-a-hotspot-of-an-image-map-on
https://www.jqueryscript.net/other/Simple-jQuery-Plugin-For-Highlighting-Image-Map-Maphilight.html

jquery-auto-complete
-------------------
https://phppot.com/jquery/jquery-ajax-autocomplete-country-example/

keytool
-------
https://dzone.com/articles/keytool-commandutility-to-generate-a-keystorecerti
https://stackoverflow.com/questions/30755220/how-to-create-csr-with-sans-using-keytool/43637750#43637750
keytool -certreq -file test.csr -keystore test.jks -alias testAlias -ext SAN=dns:test.example.com

OpenSSL
-------
https://www.digicert.com/util/csr-creation-microsoft-servers-using-digicert-utility.htm
