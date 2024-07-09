   31  sudo lvcreate -l %100FREE  vg_temp -n lv_swap
   32  sudo lvcreate -l +100%FREE  vg_temp -n lv_swap
   38  sudo lvcreate -l +100%FREE  vg_datos -n lv_docker
   41  sudo lvcreate -l +100%FREE  vg_datos -n lv_multimedia
   61  cd UTN-FRA_SO_Examenes/202406_Recu/docker/
   64  vim web/index.html
   65  vim dockerfile
   70  sudo fdisk -l
   71  sudo fdisk /dev/sdd
   72  sudo pvcreate /dev/sdd3 
   73  sudo vgextend vg_datos /dev/sdd3
   74  sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
   75  sudo resize2fs /dev/mapper/vg_datos-lv_docker 
   76  docker build -t afalasca/web2-falasca .
   77  sudo docker login 
   78  docker image list
   83  docker tag afalasca/web2-falasca afalasca/examen
   84  docker push afalasca/examen
   94  echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" &&  echo "La frecuencia: $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $6}')" > web/file/info.txt 
   95  cat web/file/info.txt 
   96  echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" >> web/file/info.txt
   97  cat web/file/info.txt 
   99  vim docker-compose.yml 
  100  docker compose up -d
  101  docker ps
  103  curl localhost:8081
  107  docker exec -it docker-web-1 cat /usr/share/nginx/html/file/info.txt
  109  echo "--------------------fin Punto D------------------"
  111  history | grep -E '61|64|65|70|71|72|73|74|75|76|77|78|83|84|94|95|96|97|99|100|101|103|107|109' >> Punto_D.sh
  161  ll
  164  ll roles/2PRecuperatorio/
  165  ll roles/2PRecuperatorio/tasks/
  170  vim roles/2PRecuperatorio/templates/template_01.j2
  171  cat roles/2PRecuperatorio/templates/template_01.j2
  172  ansible-playbook -i inventory/hosts playbook.yml
  173  vim roles/2PRecuperatorio/tasks/main.yml 
  174  ansible-playbook -i inventory/hosts playbook.yml
  175  cat /tmp/alumno/datos.txt
  176  vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
  177  ansible-playbook -i inventory/hosts playbook.yml
  178  vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
  183  grep -E 'Profesor|alumno' /etc/passwd
  184  ll /home/
  194  history
  195  history | grep -E '2|117|120|122|126|127|128|131|135|136|142|158|159|166|167|170|175|181|183|184|190|193' >> Punto_D.sh
  196  cat Punto_D.sh 
  197  clear
  199  history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'
  200  echo "history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'"
  201  history | grep -E '^2|^117|^120|^122|^126|^127|^128|^131|^135|^136|^142|^158|^159|^166|^167|^170|^175|^181|^183|^184|^190|^193'
  208  sudo chmod 647 /usr/local/bin/Falasca_check_URL.sh
  248  cat RTA_Examen_20240708/
  249  mv Punto_A RTA_Examen_20240708/
  250  mv Punto_A.sh RTA_Examen_20240708/
  251  mv Punto_B.sh RTA_Examen_20240708/
  252  mv UTN-FRA_SO_Examenes/202406_Recu/ansible/Punto_B.sh RTA_Examen_20240708/
  254  mv UTN-FRA_SO_Examenes/202406_Recu/ansible/Punto_D.sh RTA_Examen_20240708/
  257  ll RTA_Examen_20240708/
  258  cat RTA_Examen_20240708/Punto_A
  259  cat RTA_Examen_20240708/Punto_A.sh
  260  cat RTA_Examen_20240708/Punto_B.sh
  261  cat RTA_Examen_20240708/Punto_D.sh
  262  cat RTA_Examen_20240708/Punto_C.sh
  264  cat UTN-FRA_SO_Examenes/202406_Recu/docker/Punto_D.sh 
