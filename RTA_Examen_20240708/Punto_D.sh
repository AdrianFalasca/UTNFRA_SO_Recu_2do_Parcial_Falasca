    2  ssh-keygen
   11  ll UTN-FRA_SO_Examenes/202406_Recu/
   12  UTN-FRA_SO_Examenes/202406_Recu/script_Precondicion.sh 
   20  sudo fdisk /dev/sdc
   21  sudo fdisk /dev/sdd
   22  sudo swapon -s
   23  sudo fdisk /dev/sddsudo fdisk -l
   24  sudo fdisk -l
   25  sudo mkswap /dev/sde2 
   26  sudo swapon /dev/sde2 
   27  sudo swapon -s
   28  sudo pvcreate /dev/sde1 
   29  sudo vgcreate vg_temp /dev/sde1 
   30  sudo lvcreate -L +2G  vg_temp -n lv_swap
   32  sudo lvcreate -l +100%FREE  vg_temp -n lv_swap
   36  sudo pvcreate /dev/sdd2 
   37  sudo vgcreate vg_datos /dev/sdd2  
   42  sudo pvs
   52  sudo systemctl restart docker
   58  history | grep -E '18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|51|52|56' >> Punto_A.sh
   61  cd UTN-FRA_SO_Examenes/202406_Recu/docker/
   62  ll
   68  docker build -t web2-Falasca .
   69  docker build -t web2-falasca .
   72  sudo pvcreate /dev/sdd3 
   75  sudo resize2fs /dev/mapper/vg_datos-lv_docker 
   76  docker build -t afalasca/web2-falasca .
   79  docker push afalasca/web2-falasca
   80  sudo docker push afalasca/web2-falasca
   82  sudo docker push afalasca/web2-falasca
   83  docker tag afalasca/web2-falasca afalasca/examen
   92  echo "La frecuencia es  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $6}')" 
   93  echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" 
   94  echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" &&  echo "La frecuencia: $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $6}')" > web/file/info.txt 
   96  echo "CPU Modelo:  $(lscpu | grep "Model na" | awk -F ':' '{print $2}' | awk -F ' ' '{print $3}')" >> web/file/info.txt
  102  docker exec -it docker-web-1 cat /usr/share/nginx/html/file
  111  history | grep -E '61|64|65|70|71|72|73|74|75|76|77|78|83|84|94|95|96|97|99|100|101|103|107|109' >> Punto_D.sh
  112  cat Punto_D.sh 
  117  cd ansible/
  120  sudo cat /home/vagrant/.ssh/id_rsa.pub
  121  ll
  122  cd roles/
  123  ansible-galaxy role init 2PRecuperatorio
  124  ll
  125  ll 2PRecuperatorio/
  126  ansible-galaxy role init Alta_Usuarios_Falasca
  127  ansible-galaxy role init Sudoers_Falasca
  128  ansible-galaxy role init Instala-tools_Falasca
  129  cd ..
  131  vim playbook.yml 
  132  cat playbook.yml 
  135  vim roles/Sudoers_Falasca/tasks/main.yml 
  136  vim roles/Alta_Usuarios_Falasca/tasks/main.yml 
  142  vim roles/2PRecuperatorio/tasks/main.yml 
  152  sudo id Profesor
  158  vim roles/Instala-tools_Falasca/tasks/main.yml 
  159  ansible-playbook -i inventory/hosts playbook.yml
  162  tree
  163  vim roles/2PRecuperatorio/tasks/main.yml 
  164  ll roles/2PRecuperatorio/
  165  ll roles/2PRecuperatorio/tasks/
  166  mkdir roles/2PRecuperatorio/templates/
  167  touch roles/2PRecuperatorio/templates/template_01.j2
  168  cat roles/2PRecuperatorio/templates/template_01.j2
  169  ll roles/2PRecuperatorio/templates/
  170  vim roles/2PRecuperatorio/templates/template_01.j2
  171  cat roles/2PRecuperatorio/templates/template_01.j2
  172  ansible-playbook -i inventory/hosts playbook.yml
  173  vim roles/2PRecuperatorio/tasks/main.yml 
  175  cat /tmp/alumno/datos.txt
  181  ansible-playbook -i inventory/hosts playbook.yml
  182  grep -i Profesores /etc/group
  183  grep -E 'Profesor|alumno' /etc/passwd
  184  ll /home/
  190  sudo grep GProfesores /etc/sudoers
  192  ansible-playbook -i inventory/hosts playbook.yml
  193  echo "----------fin Punto D-------------"
  195  history | grep -E '2|117|120|122|126|127|128|131|135|136|142|158|159|166|167|170|175|181|183|184|190|193' >> Punto_D.sh
