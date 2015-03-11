# openidm-docker
Docker image for OpenIDM

1. Create docker image:
   $ docker build -t openidm .

2. Run it:
   $ docker run -p 8443:8443 openidm

You can access openidm locally from the following endpoints:
* Console (admin/admin): https://localhost:8443/system/console

* UI (openidm-admin/openidm-admin): https://localhost:8443/openidmui/index.html#login/

* OpenIDM documentation: http://docs.forgerock.org/en/openidm/3.1.0/install-guide/index.html
