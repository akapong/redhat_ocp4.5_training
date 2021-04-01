exit
ls
man -k cap
man -k capability
man -k seccomp
ls
lab-configure
cd /usr/local/etc
ls
cat ocp4.config
cd
pwd
source /usr/local/etc/ocp4.config 
cat /usr/local/etc/ocp4.config 
git clone https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps
ls
cd DO180-apps/
git status
head README.md 
which lab-configure 
cat /usr/local/bin/lab-configure 
ls
cd /usr/local/bin/
ls
cp lab-configure ~/DO180-apps/
ls
cd ~/DO180-apps/
ls
cd /usr/local/etc
ls
cp ocp4.* ~/DO180-apps/
cd ~/DO180-apps/
ls
ls -la
mkdir config_lab
mv lab-configure config_lab/
mv ocp4.* config_lab/
cd /usr/local/bin
ls
cat lab
ls
cat crudini 
ls
cp * ~/DO180-apps/config_lab/
cd
cd DO180-apps/config_lab/
ls
cd ..
git branch -a
git add -a
git add -A
git commit -m "add config lab"
git push origin master
cd /etc/
ls
cd containers/
ls
cd registries.d/
ls
cat default.yaml 
cd ..
ls
cat registries.conf 
less registries.conf 
vim registries.conf 
cd
lab container-create start
sudo podman run --name mysql-basic -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 -d rhscl/mysql57-rhel7:5.7-3.14
sudo podman run --name mysql-basic -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 -d rhscl/mysql-57-rhel7:5.7-3.14
sudo podman ps --format "{{.ID}} {{.Image}} {{.Names}}" 3b42f6828
sudo podman ps --format "{{.ID}} {{.Image}} {{.Names}}" 3b42f6828[2~[2~
exit
cd DO180
ls
cd labs/
ls
d manage-lifecycle/
cd manage-lifecycle/
ls
cat db.sql 
cd
mysql -uuser1 -pmypa55 --protocol tcp -h localhost
sudo podman ps
sudo podman exec -it mysql-basic /bin/bash
lab container-create finish
sudo podman ps
lab manage-lifecycle start
sudo podman run --name mysql-db rhscl/mysql-57-rhel7
sudo podman logs mysql-db
sudo podman run --name mysql -d -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 rhscl/mysql-57-rhel7
sudo podman ps -q
sudo podman ps --format="{{.ID}} {{.Names}} {{.Status}}"
sudo podman inspect -f '{{ .NetworkSettings.IPAddress}}' mysql
mysql -uuser1 -h 10.188.0.4 -pmypa55 items < /home/student/DO180/labs/manage-lifecycle/db.sql 
sudo podman run --name mysql-2 -it rhscl/mysql-57-rhel7 /bin/bash
sud
sudo podman ps
sudo podman ps -a
sudo podman ps -a --format="{{.ID}} {{.Names}} {{.Status}}"
sudo podman exec mysql /bin/bash -c 'mysql -uuser1 -pmypa55 -e "select * from items.Projects;"'
mysql -uuser1 -h 10.188.0.4 -pmypa55 items < /home/student/DO180/labs/manage-lifecycle/db.sql 
mysql -uuser1 -h 10.88.0.4 -pmypa55 items < /home/student/DO180/labs/manage-lifecycle/db.sql 
sudo podman exec mysql /bin/bash -c 'mysql -uuser1 -pmypa55 -e "select * from items.Projects;"'
lab manage-lifecycle finish
lab manage-storage start
sudo mkdir -pv /var/local/mysql
sudo semanage fcontext -a -t container_file_t '/var/local/mysql(/.*)?'
sudo restorecon -R /var/local/mysql
ls -ldZ /var/local/mysql/
man restorecon
sudo chown -Rv 27:27 /var/local/mysql/
sudo podman pull rhscl/mysql-57-rhel7
sudo podman run --name persist-db -d -v /var/local/mysql:/var/lib/mysql/data -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 rhscl/mysql-57-rhel7
sudo podman ps --format="{{.ID}} {{.Names}} {{.Status}}"
ls -ld /var/local/mysql/
ls -ld /var/local/mysql/items
lab manage-storage finish
lab manage-networking start
sudo podman run --name mysqldb-port -d -v /var/local/mysql:/var/lib/mysql/data -p 13306:3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 rhscl/mysql-57-rhel7
sudo podman ps --format="{{.ID}} {{.Names}} {{.Ports}}"
mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items < /home/student/DO180/labs/manage-networking/db.sql 
sudo podman exec -it mysqldb-port \ 
sudo podman exec -it mysqldb-port /opt/rh/rh-mysql57/root/usr/bin/mysql -uroot items -e "select * from Items"
sudo podman exec -it mysqldb-port /opt/rh/rh-mysql57/root/usr/bin/mysql -uroot items -e "select * from Item"
mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items -e "select * from item"
mysql -uuser1 -h 127.0.0.1 -pmypa55 -P13306 items -e "select * from Item"
lab manage-networking finish
ls -ldz /var/local/mysql
ls -ldA /var/local/mysql
ls -ldZ /var/local/mysql
sudo mkdir -pv /var/local/mysql
sudo semanage fcontext -a -t container_file_t '/var/local/mysql(/.*)?'
sudo restorecon -R /var/local/mysql
sudo chown -Rv 27:27 /var/local/mysql/
sudo podman run --name mysql-1 -d -v /var/local/mysql:/var/lib/mysql/data -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 rhscl/mysql-57-rhel7

history|grep -i ipadd
history 83
history sudo podman inspect -f '{{ .NetworkSettings.IPAddress}}' mysql
sudo podman ps
history sudo podman inspect -f '{{ .NetworkSettings.IPAddress}}' mysql-1
sudo podman inspect -f '{{ .NetworkSettings.IPAddress}}' mysql-1
ls
cd DO180
cd labs/
ls
lab manage-review start
ls
history |grep 10.88
ysql -uuser1 -h 10.88.0.8 -pmypa55 items < /home/student/DO180/labs/manage-review/db.sql 
mysql -uuser1 -h 10.88.0.8 -pmypa55 items < /home/student/DO180/labs/manage-review/db.sql 
history|grep select
sudo podman exec -it mysql-1 /opt/rh/rh-mysql57/root/usr/bin/mysql -uroot items -e "select * from Item"
sudo podman stop mysql-1
history|grep run --name mysql
history|grep "run --name mysql"
sudo podman run --name mysql-2 -d -v /var/local/mysql:/var/lib/mysql/data -p 13306:3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa55 rhscl/mysql-57-rhel7
sudo podman ps -a > /tmp/my-containers
cat /tmp/my-containers 
sudo podman exec -it mysql-2 /bin/bash
sudo podman rm mysql-q
sudo podman rm mysql-1
lab manage-review grade
mysql -uuser1 -h workstation.lab.example.com  -pmypa55 -P13306 items
lab manage-review grade
lab manage-review finish
lab image-operations start
sudo podman login quay.io
sudo podman run -d --name official-httpd -p 8180:80 redhattraing/httpd-parent
sudo podman run -d --name official-httpd -p 8180:80 redhattraining/httpd-parent
sudo podman exec -it official-httpd /bin/bash
curl 127.0.0.1:8180/do180.html
sudo podman diff official-httpd
sudo podman stop official-httpd
sudo podman commit -a 'akapong' official-httpd do180-custom-httpd
sudo podman images
sudo podman diff 654f6b334e14
source /usr/local/etc/ocp4.config 
sudo podman tag do180-custom-httpd quay.io/${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
sudo podman images
sudo podman push quay.io/akapong/do180-custom-httpd:v1.0
sudo podman run -d --name test-httpd -p 8280:80 ${RHT_OCP4_QUAY_USER}/do180-custom-httpd:v1.0
curl http://localhost:8280/do180.html
lab image-operations finish
lab image-review start
sudo podman pull quay.io/redhattraining/nginx:1.17
sudo podman images
sudo podman run --name official-nginx -d -p 8080:80 quay.io/redhattraining/nginx:1.17
sudo podman exec -it official-nginx /bin/bash
curl 127.0.0.1
curl 127.0.0.1:8080
sudo podman stop official-nginx
sudo podman commit -a 'akapong' official-nginx do180/mynginx:v1.0-SNAPSHOT
sudo podman images
sudo podman run --name official-nginx-dev -d -p 8080:80 do180/mynginx:v1.0-SNAPSHOT
sudo podman exec -it official-nginx-dev /bin/bash
curl 127.0.0.1:8080
sudo podman stop official-nginx-dev
sudo podman commit -a 'akapong' official-nginx-dev do180/mynginx:v1.0
sudo podman images
sudo podman ps -a --format="{{.ID}} {{.Names}} {{.Status}}"
sudo podman rm official-nginx-dev
sudo podman ps -a --format="{{.ID}} {{.Names}} {{.Status}}"
sudo podman rmi do180/mynginx:v1.0-SNAPSHOT
sudo podman images
sudo podman run -d --name my-nginx -p 8280:80 do180/myngix:v1.0
sudo podman run -d --name my-nginx -p 8280:80 do180/mynginx:v1.0
curl 127.0.0.1:8280
lab image-review grade
lab image-review finish
lab dockerfile-create start
vim /home/student/DO180/labs/dockerfile-create/Dockerfile
cd dockerfile-create/
sudo podman build --layers=false -t do180/apache .
sudo podman images
sudo podman run --name lab-apache -d -p 10080:80 do180/apache
cd
sudo podman ps
curl 127.0.0.1:10080
lab dockerfile-create finish
ls
lab dockerfile-review start
cd /home/student/DO180/labs/dockerfile-review/
vim Dockerfile
sudo podman build --layers=false -t do180/custom-apache .
sudo podman images
sudo podman run -d --name dockerfile -p 20080:8080 do180/custom-apache
sudo podman ps
curl 127.0.0.1:20080
lab dockerfile-review grade
cd
lab dockerfile-review finish
lab openshift-resource start
lab openshift-resources start
source /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP04_DEV_USER}-mysql-openshift
oc new-project ${RHT_OCP4_DEV_USER}-mysql-openshift
oc new-app --as-deployment-config --docker-image=registry.access.redhat.com/rhscl/mysql-57-rhel7:latest --name=mysql-openshift -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=testdb -e MYSQL_ROOT_PASSWORD=r00tpa55
oc status
oc get ns
oc get route
oc get pods
oc describe pod mysql-openshift-1-8hltx
oc get is
oc get svc
oc describe svc mysql-openshift 
oc describe dc mysql-openshift 
oc expose svc mysql-openshift
oc get routes
oc get pod
oc port-forward mysql-openshift-1-8hltx  3306:3306
oc delete project ${RHT_OCP4_DEV_USER}-mysql-openshift
lab openshift-resources finish
ls
cd DO180
ls
cd labs/
ls
cd ..
cd DO180-apps/
ls
cd php-helloworld/
ls
cd
lab openshift-routes start
source /usr/local/etc/ocp4.config 
env
env|grep RHT
cat /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-route
oc new-app --as-deployment-config php:7.3~https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps --context-dir php-helloworld --name php-helloworld
oc status
oc get pod -w
oc logs -f bc/php-helloworld
oc logs -f dc/php-helloworld
oc logs -f bc
oc resource
oc get-resource
oc describe svc/php-helloworld
oc expose svc/php-helloworld
oc describe route
curl php-helloworld-developer-route.apps.ocp4.example.com
oc delete route/php-helloworld
oc expose svc/php-helloworld \
cat /usr/local/etc/ocp4.config 
oc expose svc/php-helloworld --name=${RHT_OCP4_DEV_USER}-xyz
oc describe route
curl developer-xyz-developer-route.apps.ocp4.example.com
oc --help
oc get --help
oc api-resources 
oc logs -f bc/php-helloworld|more
oc logs -f dc/php-helloworld|more
oc logs -f bc/php-helloworld|more
oc new-app --help|more
oc new-app --list
oc new-app --list|more
oc get pod
oc get dc
oc describe dc/php-helloworld
oc describe dc/php-helloworld|more
oc get pod
oc get pod --help
oc get pod -o=wide
oc get is
oc get pod
lab openshift-routes finish
lab openshift-routes create
lab openshift-routes start
lab openshift-routes finish
lab openshift-review start
source /usr/local/etc/ocp4.config 
cat /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-ocp
oc new-app --as-deployment-config php:7.3~https://github.com/RedHatTraining/DO180-apps --context-dir temps --name temps
oc status
oc log -f bc/temps
oc logs -f bc/temps
oc get pod -w
oc expose svc/temps
oc get route
lab openshift-review grade
lab openshift-review finish
oc get is -n openshift
lab openshift-s2i start
cd DO180-apps/
ls
git branch -a
git status
git checkout master
git checkout -b s2i
git status
git push -u origin s2i
ls
cd php-helloworld/
ls
cat index.php 
source /usr/local/etc/ocp4.config 
cat /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
cd
op new-project ${RHT_OCP4_DEV_USER}-s2i
oc new-project ${RHT_OCP4_DEV_USER}-s2i
oc new-app --as-deployment-config php:7.3 \~https://github.com/RedHatTraining/DO180-apps --context-dir temps --name temps
oc new-app --as-deployment-config php:7.3 --name=php-helloworld https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i --context-dir php-helloworld
oc status
oc get pods
oc logs --all-containers -f php-helloworld-1-build
oc describe dc/php-helloworld
oc expose service php-helloworld --name ${RHT_OCP4_DEV_USER}-helloworld
oc get route -o jsonpath='{..spec.host}{"\n"}'
curl -s developer-helloworld-developer-s2i.apps.ocp4.example.com
cd DO180-apps/php-helloworld/
ls
vim index.php 
git add .
git commit -m "Changed index page contents"
git push origin s2i
git status
oc start-build php-helloworld
oc get pods
oc logs php-helloworld-2-build
oc get pods
oc get routes
curl -s developer-helloworld-developer-s2i.apps.ocp4.example.com
lab openshift-s2i finish
cat /usr/local/etc/ocp4.config 
cd
lab multicontainer-openshift start
cd DO180/labs/multicontainer-openshift/images/mysql/
ls
cat Dockerfile 
sudo podman build -t d0180-mysql-57-rhel7 .
source /usr/local/etc/ocp4.config 
sudo podman login quay.io -u ${RHT_OCP4_QUAY_USER}
sudo podman tag do180-mysql-57-rhel7 quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-57-rhel7
sudo podman images
sudo podman tag d0180-mysql-57-rhel7 quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-57-rhel7
sudo podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-57-rhel7
cd 
cd DO180/labs/multicontainer-openshift/
cd images/nodejs/
ls
sudo podman build --layers=false -t do180-nodejs .
./build.sh 
sudo podman images
sudo podman tag do180/todonodejs quay.io/${RHT_OCP4_QUAY_USER}/do180-todonodejs
sudo podman tag do180-nodejs quay.io/${RHT_OCP4_QUAY_USER}/do180-todonodejs
sudo podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-todonodejs
lab multicontainer-openshift finish
lab multicontainer-openshift start
cd ~/DO180/labs/multicontainer-openshift/images/mysql
sudo podman build -t do180-mysql-57-rhel7 .
source /usr/local/etc/ocp4.config 
cat /usr/local/etc/ocp4.config 
sudo podman login quay.io -u ${RHT_OCP4_QUAY_USER}
sudo podman tag do180-mysql-57-rhel7 quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-57-rhel7
sudo podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-57-rhel7
cd ~/DO180/labs/multicontainer-openshift/
cd images/nodejs/
sudo podman build --layers=false -t do180-nodejs .
cd ../../
cd deploy/nodejs
./build.sh
sudo podman images
sudo podman tag do180/todonodejs quay.io/${RHT_OCP4_QUAY_USER}/do180-todonodejs
sudo podman push quay.io/${RHT_OCP4_QUAY_USER}/do180-todonodejs
cat /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-template
cd ~/DO180/labs/multicontainer-openshift/
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
oc get pods -w
ls
cat todo-template.json 
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
oc get pods -q
oc get pods -w
cd
lab container-create finish
lab comprehesive-review start
lab comprehensive-review start
cd DO180/labs/comprehensive-review/image/
./get-nexus-bundle.sh 
sudo podman build --layers=false -t nexus .
pwd
ls
vim Dockerfile
cat /usr/local/etc/ocp4.config 
sudo podman images
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
cd /home/student/DO180/labs/multicontainer-openshift/
ls
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
oc get pods -w
cd
lab multicontainer-openshift finish
lab multicontainer-openshift start
cd DO180/labs/multicontainer-openshift/
ls
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
source /usr/local/etc/ocp4.config 
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
lab multicontainer-openshift finish
cd
lab multicontainer-openshift start
cd DO180/labs/multicontainer-openshift/images/mysql/
sudo podman build -t d0180-mysql-57-rhel7
sudo podman build -t d0180-mysql-57-rhel7 .
source /usr/local/etc/ocp4.config 
sudo podman login quay.io -u ${RHT_OCP4_QUAY_USER}
cat /usr/local/etc/ocp4.config 
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-template
cd 
cd DO180/labs/multicontainer-openshift/
history|grep process
oc process -f todo-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
oc get pods -w
oc stauts|grep -o "http:.*.com"
oc status|grep -o "http:.*.com"
oc status|grep -o "http:.*com"
oc status
oc expose service todoapi
oc status|grep -o "http:.*com"
curl -w "\n" http://todoapi-developer-template.apps.ocp4.example.com/todo/api/items/1
cd
lab multicontainer-openshift finish
lab comprehensive-review start
cd DO180/labs/comprehensive-review/image/
ls
./get-nexus-bundle.sh 
vim Dockerfile
sudo podman build --layers=false -t nexus .
cd ~/DO180/labs/comprehensive-review/deploy/local/
ls
./run-persistent.sh 
sudo podman ps
sudo podman logs magical_maxwell
sudo podman ps
sudo podman inspect -f '{{.NetworkSettings.IPAddress}}' magical_maxwell
curl -v 10.88.0.18:8081/nexus/ 2>&1 |grep -E 'HTTP|<title>'
sudo podman login -u ${RHT_OCP4_QUAY_USER} quay.io
sudo podman kill magical_maxwell
sudo podman images
sudo podman push localhost/nexus:latest quay.io/${RHT_OCP4_QUAY_USER}/nexus:latest
sudo podman login -u ${RHT_OCP4_QUAY_USER} quay.io
sudo podman push localhost/nexus:latest > quay.io/${RHT_OCP4_QUAY_USER}/nexus:latest
sudo podman push localhost/nexus:latest quay.io/${RHT_OCP4_QUAY_USER}/nexus:latest
cd ~/DO180/labs/comprehensive-review/deploy/openshift/
oc login -u ${RHT_OCP4_DEV_USER} -p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-review
oc process -f resources/nexus-template.json -p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} |oc create -f -
oc get pods
oc get pods -w
oc expose svc/nexus
oc get route -o yaml
lab comprehensive-review grade\
lab comprehensive-review grade
lab comprehensive-review finish
cd
oc get node -o wide
oc get node
oc adm top nodes
oc get clusterversion
oc api-resource
oc api-resources
oc api-resources|more
lab execute-troubleshoot start
source /usr/local/etc/ocp4.config 
cat /usr/local/etc/ocp4.config 
oc login -u kubeadmin -p RHT_OCP4_KUBEADM_PASSWD \
oc login -u kubeadmin -p ${RHT_OCP4_KUBEADM_PASSWD} https://api.ocp4.example.com:6443
oc get nodes
oc adm top node
oc describe node master01
oc get project
oc get project|grep image
oc get pod -n openshift-image-registry
oc logs --tail 3 -n openshift-image-registry cluster-image-registry-operator-5f47f6fcf7-bh22s
oc logs --tail 3 -n openshift-image-registry -c cluster-image-registry-operator cluster-image-registry-operator-5f47f6fcf7-bh22s
oc logs --tail 1 -n openshift-image-registry image-registry-64b69c4bf9-48xl5
oc adm node-logs --tail 1 -u kubelet master01
oc debug node/master01
crictl
oc project execute-troubleshoot
oc get pod
oc status
oc get pod
oc get events
skopeo inspect docker://registry.access.redhat.com/rhscl/postgresq-96-rhel7:1
skopeo inspect docker://registry.access.redhat.com/rhscl/postgresql-96-rhel7:1
oc edit deployment/psql
oc status
oc get pods
oc debug node/master01
lab execute-troubleshoot finish
oc get storageclass
lab install-storage start
source /usr/local/etc/ocp4.config 
oc login -u kubeadmin -p ${RHT_OCP4_KUBEADM_PASSWD} https://api.ocp4.example.com:6443
oc new-project install-storage
oc get storageclass
oc new-app --name postrgresql-persistent --docker-image registry.redhat.io/rhel8/postgresql-12:1-43 -e POSTGRESQL_USER=redhat -e POSTGRESQL_PASSWORD=redhat123 -e POSTGRESQL_DATABASE=persistentdb
oc status
oc get pvc
oc set volumes deployment/postgresql-persistent --add --name postgresql-storage --type pvc --claim-class nfs-storage --claim-mode rwo --claim-size 10Gi --mount-path /var/lib/pgsql --claim-name postgresql-storage
oc get deployment
oc set volumes deployment/postgresql-persistent --add --name postgresql-storage --type pvc --claim-class nfs-storage --claim-mode rwo --claim-size 10Gi --mount-path /var/lib/pgsql --claim-name postgresql-storage
oc get pvc
history
oc get deployment
oc delete --help
oc delete --help|grep project
oc delete project install-storage
oc get dc
oc get deployment
oc new-project install-storage
oc get storageclass
history|grep new-app
oc new-app --name postgresql-persistent --docker-image registry.redhat.io/rhel8/postgresql-12:1-43 -e POSTGRESQL_USER=redhat -e POSTGRESQL_PASSWORD=redhat123 -e POSTGRESQL_DATABASE=persistentdb
history|grep volumes
oc set volumes deployment/postgresql-persistent --add --name postgresql-storage --type pvc --claim-class nfs-storage --claim-mode rwo --claim-size 10Gi --mount-path /var/lib/pgsql --claim-name postgresql-storage

oc get pvc
oc get pv \
