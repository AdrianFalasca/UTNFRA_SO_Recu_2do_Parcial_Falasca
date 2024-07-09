sudo apt update
ssh-keygen
cat /home/vagrant/.ssh/id_rsa.pub
sudo cat /home/vagrant/.ssh/id_rsa.pub
sudo visudo
cat /home/vagrant/.ssh/id_rsa.pub
sudo cat /home/vagrant/.ssh/id_rsa.pub
git clone git@github.com:upszot/UTN-FRA_SO_Examenes.git
sudo usermod -a -G docker $(whoami)
id afalasca 
ll UTN-FRA_SO_Examenes/202406_Recu/
UTN-FRA_SO_Examenes/202406_Recu/script_Precondicion.sh 
~/.bashrc
sudo ~/.bashrc
source  ~/.bashrc
history -a
ll
sudo fdisk -l
sudo fdisk /dev/sde
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo swapon -s
sudo fdisk /dev/sddsudo fdisk -l
sudo fdisk -l
sudo mkswap /dev/sde2 
sudo swapon /dev/sde2 
sudo swapon -s
sudo pvcreate /dev/sde1 
sudo vgcreate vg_temp /dev/sde1 
sudo lvcreate -L +2G  vg_temp -n lv_swap
sudo lvcreate -l %100FREE  vg_temp -n lv_swap
sudo lvcreate -l +100%FREE  vg_temp -n lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo swapon /dev/mapper/vg_temp-lv_swap 
sudo swapon -s
sudo pvcreate /dev/sdd2 
sudo vgcreate vg_datos /dev/sdd2  
sudo lvcreate -l +100%FREE  vg_datos -n lv_docker
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgextend vg_datos /dev/sdd1 /dev/sdc1  
sudo lvcreate -l +100%FREE  vg_datos -n lv_multimedia
sudo pvs
sudo vgs
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mkdir /Multimedia/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
df -f
df -h
sudo systemctl restart docker
sudo systemctl status docker
df -h 
history
echo "----- fin Punto A ------"
history
history | grep -E '18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|51|52|56' >> Punto_A.sh
cat Punto_A.sh 
clear
cd UTN-FRA_SO_Examenes/202406_Recu/docker/
ll
ll web/
vim web/index.html
vim dockerfile
cat dockerfile 
ll
docker build -t web2-Falasca .
docker build -t web2-falasca .
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd3 
sudo vgextend vg_datos /dev/sdd3
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker 
docker build -t afalasca/web2-falasca .
sudo docker login 
docker image list
docker push afalasca/web2-falasca
sudo docker push afalasca/web2-falasca
sudo systemctl restart docker
sudo docker push afalasca/web2-falasca
docker tag afalasca/web2-falasca afalasca/examen
docker push afalasca/examen
sudo docker push afalasca/examen
id afalasca 
df -h /var/lib/docker/
ll
ll web/
ll web/file/
lscpu
echo "La frecuencia es  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $6}')" 
echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" 
echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" &&  echo "La frecuencia: $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $6}')" > web/file/info.txt 
cat web/file/info.txt 
echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" >> web/file/info.txt
cat web/file/info.txt 
ll
vim docker-compose.yml 
docker compose up -d
docker ps
docker exec -it docker-web-1 cat /usr/share/nginx/html/file
curl localhost:8081
vim docker-compose.yml 
docker compose up -d
docker exec -it docker-web-1 cat /usr/share/nginx/html/file
docker exec -it docker-web-1 cat /usr/share/nginx/html/file/info.txt
history 
echo "--------------------fin Punto D------------------"
history 
history | grep -E '61|64|65|70|71|72|73|74|75|76|77|78|83|84|94|95|96|97|99|100|101|103|107|109' >> Punto_D.sh
cat Punto_D.sh 
clear
ll
cd ..
ll
cd ansible/
ll
history
sudo cat /home/vagrant/.ssh/id_rsa.pub
ll
cd roles/
ansible-galaxy role init 2PRecuperatorio
ll
ll 2PRecuperatorio/
ansible-galaxy role init Alta_Usuarios_Falasca
ansible-galaxy role init Sudoers_Falasca
ansible-galaxy role init Instala-tools_Falasca
cd ..
ll
vim playbook.yml 
cat playbook.yml 
ll
ll roles/Sudoers_Falasca/
vim roles/Sudoers_Falasca/tasks/main.yml 
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
sudo grep GProfesores /etc/sudoers
vim roles/Sudoers_Falasca/tasks/main.yml 
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2PRecuperatorio/tasks/main.yml 
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
vim roles/Sudoers_Falasca/tasks/main.yml 
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ll
id Profesor
sudo id Profesor
id GProfesores
grep -i alumno /etc/group
sudo grep GProfesores /etc/sudoers
grep -i Profesores /etc/group
ls -l /home
vim roles/Instala-tools_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
cat roles/Instala-tools_Falasca/tasks/main.yml 
ll
tree
vim roles/2PRecuperatorio/tasks/main.yml 
ll roles/2PRecuperatorio/
ll roles/2PRecuperatorio/tasks/
mkdir roles/2PRecuperatorio/templates/
touch roles/2PRecuperatorio/templates/template_01.j2
cat roles/2PRecuperatorio/templates/template_01.j2
ll roles/2PRecuperatorio/templates/
vim roles/2PRecuperatorio/templates/template_01.j2
cat roles/2PRecuperatorio/templates/template_01.j2
ansible-playbook -i inventory/hosts playbook.yml
vim roles/2PRecuperatorio/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/alumno/datos.txt
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
grep -i Profesores /etc/group
grep -E 'Profesor|alumno' /etc/passwd
ll /home/
vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
ll /home/
sudo grep vagrant /etc/sudoers
grep vagrant /etc/sudoers
sudo grep GProfesores /etc/sudoers
vim roles/Instala-tools_Falasca/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
echo "----------fin Punto D-------------"
history
history | grep -E '2|117|120|122|126|127|128|131|135|136|142|158|159|166|167|170|175|181|183|184|190|193' >> Punto_D.sh
cat Punto_D.sh 
clear
cat Punto_D.sh 
history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'
echo "history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'"
history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'
history
echo " ---------------Inicio Punto B "
clear
cd ../../../
touch /usr/local/bin/Falasca_check_URL.sh
sudo touch /usr/local/bin/Falasca_check_URL.sh
sudo chmod 647 /usr/local/bin/Falasca_check_URL.sh
ll /usr/local/bin/Falasca_check_URL.sh
vim /usr/local/bin/Falasca_check_URL.sh
ll UTN-FRA_SO_Examenes/202406_Recu/
cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
Falasca_check_URL.sh cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
cat Falasca_check_URL.sh  
Falasca_check_URL.sh 
cat UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
cat Falasca_check_URL.sh 
cat /usr/local/bin/Falasca_check_URL.sh 
/usr/local/bin/Falasca_check_URL.sh UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
sudo /usr/local/bin/Falasca_check_URL.sh UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
vim /usr/local/bin/Falasca_check_URL.sh
/usr/local/bin/Falasca_check_URL.sh UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
Falasca_check_URL.sh UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
echo "as" > /tmp/head-check/Error/servidor/
sudo Falasca_check_URL.sh UTN-FRA_SO_Examenes/202406_Recu/bash_script/Lista_URL.txt 
ll /var/log/
ll /var/log/status_URL.log 
cat /var/log/status_URL.log 
ll /tmp/head-check/
cat /tmp/head-check/ok/google.log 
history
history | grep -E '207|208|210|212|233|239|240|242|243' >> Punto_B.sh
cat Punto_B.sh 
ll
cat RTA_Examen_20240708/
mv Punto_A RTA_Examen_20240708/
mv Punto_A.sh RTA_Examen_20240708/
mv Punto_B.sh RTA_Examen_20240708/
mv UTN-FRA_SO_Examenes/202406_Recu/ansible/Punto_B.sh RTA_Examen_20240708/
ll UTN-FRA_SO_Examenes/202406_Recu/ansible/
mv UTN-FRA_SO_Examenes/202406_Recu/ansible/Punto_D.sh RTA_Examen_20240708/
ll UTN-FRA_SO_Examenes/202406_Recu/docker/
cat Punto_D.sh
ll RTA_Examen_20240708/
cat RTA_Examen_20240708/Punto_A
cat RTA_Examen_20240708/Punto_A.sh
cat RTA_Examen_20240708/Punto_B.sh
cat RTA_Examen_20240708/Punto_D.sh
cat RTA_Examen_20240708/Punto_C.sh
ll UTN-FRA_SO_Examenes/202406_Recu/docker/
cat UTN-FRA_SO_Examenes/202406_Recu/docker/Punto_D.sh 
cat RTA_Examen_20240708/Punto_C.sh
mv Punto_c.sh RTA_Examen_20240708/
cat RTA_Examen_20240708/Punto_C.sh
ll RTA_Examen_20240708/
cat RTA_Examen_20240708/Punto_c.sh
clear
cat RTA_Examen_20240708/Punto_c.sh
cd RTA_Examen_20240708/
ll
rm Punto_C
rm Punto_C.sh
ll
cd ..
ll
history -a
git clone git@github.com:AdrianFalasca/UTNFRA_SO_Recu_2do_Parcial_Falasca.git
ll
cp RTA_Examen_20240708/ UTNFRA_SO_Recu_2do_Parcial_Falasca/
cp -r RTA_Examen_20240708/ UTNFRA_SO_Recu_2do_Parcial_Falasca/
