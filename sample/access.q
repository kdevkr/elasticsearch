/ generate random access logs using kdb+
randIp:{`$"." sv string 256 vs (1?.z.a)[0]}

rows:1000000;
ips:randIp each rows?1;
os:rows?`$("Windows";"Mac OS X";"Linux");
methods:rows?`GET`POST`DELETE;
uris:rows?`$("/";"/index.html";"/health.html";"/api/users";"/metrics");
protocols:rows?`$("HTTP/1.0";"HTTP/1.1";"H2";"H3");
access:`created xasc ([uid:rows?0Ng]uri:uris;method:methods;os:os;protocol:protocols;ip:ips;created:rows?.z.p);
save `access.csv;