# container-centos7-cypress
Solved all Linux CentOS 7 architecture errors when running Cypress, this example container can be used to configure headless machines to run Cypress.

Example erros:

ERROR:gpu_init.cc(426) Passthrough is not supported, GL is disabled

ERROR:gpu_init.cc(453) Passthrough is not supported, GL is disabled

tput: No value for $TERM and no -T specified

Warning: Setting the NODE_TLS_REJECT_UNAUTHORIZED environment variable to '0' makes TLS connections and HTTPS requests insecure by disabling certificate verification.

To run:

Docker Build
npm i
npm run test
