   11  ll UTN-FRA_SO_Examenes/202406_Recu/
   12  UTN-FRA_SO_Examenes/202406_Recu/script_Precondicion.sh 
   18  sudo fdisk -l
   19  sudo fdisk /dev/sde
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
   31  sudo lvcreate -l %100FREE  vg_temp -n lv_swap
   32  sudo lvcreate -l +100%FREE  vg_temp -n lv_swap
   33  sudo mkswap /dev/mapper/vg_temp-lv_swap 
   34  sudo swapon /dev/mapper/vg_temp-lv_swap 
   35  sudo swapon -s
   36  sudo pvcreate /dev/sdd2 
   37  sudo vgcreate vg_datos /dev/sdd2  
   38  sudo lvcreate -l +100%FREE  vg_datos -n lv_docker
   39  sudo pvcreate /dev/sdc1 /dev/sdd1
   40  sudo vgextend vg_datos /dev/sdd1 /dev/sdc1  
   41  sudo lvcreate -l +100%FREE  vg_datos -n lv_multimedia
   42  sudo pvs
   43  sudo vgs
   44  sudo lvs
   45  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia 
   46  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
   47  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   48  sudo mkdir /Multimedia/
   49  sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
   51  df -h
   52  sudo systemctl restart docker
   56  echo "----- fin Punto A ------"
   58  history | grep -E '18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|51|52|56' >> Punto_A.sh
