#LDAP Implementation Steps
-------------------------
Step 1 : download https://github.com/spring-guides/gs-authenticating-ldap.git

Step 2 : import complete project (because you will see other projects along with the folder complete so ignore other folders while import).

Step3 : go to test-server.ldif

Step4 : Replace line number 37 to 45 to below

      dn: uid=pwdtest@sony.com,ou=people,dc=springframework,dc=org
      objectclass: top
      objectclass: person
      objectclass: organizationalPerson
      objectclass: inetOrgPerson
      cn: Ben Alex
      sn: Alex
      uid: pwdtest@sony.com
      userPassword: {SHA}nFCebWjxfaLbHHG1Qk5UU4trbvQ=
      

Step5: start the imported application - Run as Spring boot application - it will run in port 8080 (internally ldap will be running in port 8389)

Step6:Now go to wms applicaiton

Step7: Open SecurityConfiguration.java file

Step8: Replace protected void configure(AuthenticationManagerBuilder auth) with below code
        
        @Override
          protected void configure(AuthenticationManagerBuilder auth)
              throws Exception {
            /*
             * auth. jdbcAuthentication() .usersByUsernameQuery(usersQuery)
             * .authoritiesByUsernameQuery(rolesQuery) .dataSource(dataSource)
             * .passwordEncoder(bCryptPasswordEncoder);
             */

            auth
            .ldapAuthentication()
              .userDnPatterns("uid={0},ou=people")
              .groupSearchBase("ou=groups")
              .contextSource()
                .url("ldap://localhost:8389/dc=springframework,dc=org")
                .and()
              .passwordCompare()
                .passwordEncoder(new LdapShaPasswordEncoder())
                .passwordAttribute("userPassword");
          }

Step9: Run wms applicaiton

Step10 : log user name as pwdtest@sony.com , password as benspassword
