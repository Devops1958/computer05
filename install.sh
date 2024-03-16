sudo yum update -y
sudo yum install git httpd wget -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum install unzip  -y  #( apt install wget unzip -y )
sudo wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
sudo unzip main.zip
sudo cp -r static-resume-main/* /var/www/html/  
sudo yum install mariadb-server -y 
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo yum install php php-mysql -y
sudo cd /var/www/html
sudo echo "<?php phpinfo(); ?> " >> info.php
sudo systemctl restart httpd
sudo cd ~
sudo wget http://wordpress.org/wordpress-5.1.1.tar.gz
sudo tar -xzvf wordpress-5.1.1.tar.gz
sudo rm -rf wordpress-5.1.1.tar.gz
sudo cp -r wordpress/* /var/www/html/
sudo cd /var/www/html/  
 sudo   mkdir /var/www/html/wp-content/uploads
sudo cp wp-config-sample.php wp-config.php
sudo cd ~


