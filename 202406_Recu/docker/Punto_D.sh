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
