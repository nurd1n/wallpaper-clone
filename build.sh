cd /
echo "http://www.$(cat /deletedomainbaru).$(cat /deleteekstensionbaru)" >> /home/database.txt
tr -cd '[:alnum:]' < /dev/urandom | fold -w20 | head -n1 > deleteuserdbbaru; clear
tr -cd '[:alnum:]' < /dev/urandom | fold -w20 | head -n1 > deletepassdbbaru; clear
echo "user db wp : $(cat /deleteuserdbbaru)" >> /home/database.txt
echo "pass db wp : $(cat /deletepassdbbaru)" >> /home/database.txt
curl -L https://github.com/nurd1n/LEMP-Wordpress/raw/secret/block -o deleteblock
#get ip adress
ifconfig venet0:0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}' > deleteipadress
echo "cat deleteblock | sed -e 's/domain/$(cat deletedomainbaru)/g' -e 's/ekstension/$(cat deleteekstensionbaru)/g' -e 's/ipadress/$(cat deleteipadress)/g' > /etc/nginx/sites-available/$(cat deletedomainbaru).$(cat deleteekstensionbaru)" | bash -
echo "sudo ln -s /etc/nginx/sites-available/$(cat deletedomainbaru).$(cat deleteekstensionbaru) /etc/nginx/sites-enabled/$(cat deletedomainbaru).$(cat deleteekstensionbaru)" | bash -
echo "mkdir -p /home/www/$(cat deletedomainbaru)" | bash -
sudo service nginx restart; sudo service php5-fpm restart; service mysql restart; service varnish restart
# Clone Wordpress and Configure the Database
eval $(echo "cd /home/www/$(cat /deletedomainbaru)")
# Clone wordpress
echo "curl -L http://$(cat /deleteipawal)/domain-$(cat /deletedomainawal)$(cat /deleteekstensionawal).tar.gz -o domain.tar.gz" | bash -
echo "curl -L http://$(cat /deleteipawal)/secret > /deletesecret" | bash -
tar -zxvf domain.tar.gz
shred -v -n 25 -u -z domain.tar.gz
echo "shred -v -n 25 -u -z /var/www/html/domain-$(cat /deletedomainawal)$(cat /deleteekstensionawal).tar.gz" | bash -
echo "sed -e 's|$(cat /deletedomainawal)|$(cat /deletedomainbaru)|g' -e 's|$(cat /deleteuserdbawal)|$(cat /deleteuserdbbaru)|g' -e 's|$(cat /deletepassdbawal)|$(cat /deletepassdbbaru)|g' wp-config.php > wp-config2.php" | bash -
shred -v -n 25 -u -z wp-config.php
mv wp-config2.php wp-config.php
shred -v -n 25 -u -z *.xml
echo "sed -i 's|$(cat /deletedomainawal)\.$(cat /deleteekstensionawal)|$(cat /deletedomainbaru)\.$(cat /deleteekstensionbaru)|g' robots.txt" | bash -
echo "curl -L http://$(cat /deleteipawal)/wp_$(cat /deletedomainawal)$(cat /deleteekstensionawal).sql > wp_$(cat /deletedomainbaru).sql" | bash -
echo "shred -v -n 25 -u -z /var/www/html/wp_$(cat /deletedomainawal)$(cat /deleteekstensionawal).sql" | bash -
chown -R www-data:www-data *
# Create database, ganti password, wordpressdb
echo "echo \"echo \\\"create database wp_\$(cat /deletedomainbaru); create user \$(cat /deleteuserdbbaru)@localhost identified by '\$(cat /deletepassdbbaru)'; grant all privileges on wp_\$(cat /deletedomainbaru).* to \$(cat /deleteuserdbbaru)@localhost identified by '\$(cat /deletepassdbbaru)'; flush privileges\\\" | mysql -u root \\\"-p\$(cat /deletepassmysql)\\\"\"" | bash - | bash -
echo "mysql -u $(cat /deleteuserdbbaru) \"-p$(cat /deletepassdbbaru)\" wp_$(cat /deletedomainbaru) < wp_$(cat /deletedomainbaru).sql" | bash -
echo "shred -v -n 25 -u -z wp_$(cat /deletedomainbaru).sql" | bash -
echo "UPDATE wp_posts SET post_content = replace(post_content,\"$(cat /deletedomainawal).$(cat /deleteekstensionawal)\",\"$(cat /deletedomainbaru).$(cat /deleteekstensionbaru)\");" > deletemysql.sql
echo "UPDATE wp_posts SET post_content = replace(post_content,\"$(cat /deletedomainawal)\",\"$(cat /deletedomainbaru)\");" >> deletemysql.sql
echo "UPDATE wp_posts SET post_content = replace(post_content,\"$(cat /deleteinisialawal) \",\"$(cat /deleteinisialbaru) \");" >> deletemysql.sql
echo "UPDATE wp_posts SET post_content = replace(post_content,\" $(cat /deleteinisialawal)\",\" $(cat /deleteinisialbaru)\");" >> deletemysql.sql
echo "UPDATE wp_posts SET post_content = replace(post_content,\"$(cat /deleteinisialawal | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\",\"$(cat /deleteinisialbaru | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\");" >> deletemysql.sql
echo "UPDATE wp_postmeta SET meta_value = replace(meta_value,\"$(cat /deletedomainawal).$(cat /deleteekstensionawal)\",\"$(cat /deletedomainbaru).$(cat /deleteekstensionbaru)\");" >> deletemysql.sql
echo "UPDATE wp_postmeta SET meta_value = replace(meta_value,\"$(cat /deletedomainawal)\",\"$(cat /deletedomainbaru)\");" >> deletemysql.sql
echo "UPDATE wp_postmeta SET meta_value = replace(meta_value,\"$(cat /deleteinisialawal) \",\"$(cat /deleteinisialbaru) \");" >> deletemysql.sql
echo "UPDATE wp_postmeta SET meta_value = replace(meta_value,\" $(cat /deleteinisialawal)\",\" $(cat /deleteinisialbaru)\");" >> deletemysql.sql
echo "UPDATE wp_postmeta SET meta_value = replace(meta_value,\"$(cat /deleteinisialawal | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\",\"$(cat /deleteinisialbaru | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\"$(cat /deletedomainawal).$(cat /deleteekstensionawal)\",\"$(cat /deletedomainbaru).$(cat /deleteekstensionbaru)\");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\"$(cat /deletedomainawal)\",\"$(cat /deletedomainbaru)\");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\"$(cat /deleteinisialawal) \",\"$(cat /deleteinisialbaru) \");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\" $(cat /deleteinisialawal)\",\" $(cat /deleteinisialbaru)\");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\"$(cat /deleteinisialawal | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\",\"$(cat /deleteinisialbaru | sed -e 's/+/ /g' -e 's/.*/\L&/; s/[a-z]*/\u&/g')\");" >> deletemysql.sql
echo "UPDATE wp_options SET option_value = replace(option_value,\"$(cat /deletesecret)\",\"$(cat /etc/varnish/secret)\");" >> deletemysql.sql
wp db query --allow-root < deletemysql.sql
echo "UPDATE \`wp_posts\` SET \`post_status\` = 'draft' where \`post_status\` = 'publish' and \`post_type\` = 'post'; UPDATE \`wp_posts\` SET \`post_status\` = 'draft' where \`post_status\` = 'future' and \`post_type\` = 'post';" > deletemysql.sql
wp db query --allow-root < deletemysql.sql
wp plugin delete no-ping-wait wordpress-ping-optimizer wp-limit-login-attempts --allow-root
wp plugin update --all --allow-root
wp core update --version=4.5 --force --allow-root
wp core update-db --allow-root
echo "UPDATE wp_posts SET post_date = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 100) DAY;" > deletemysql.sql
echo "UPDATE wp_posts SET post_date_gmt = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 100) DAY;" >> deletemysql.sql
echo "UPDATE wp_posts SET post_modified = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 100) DAY;" >> deletemysql.sql
echo "UPDATE wp_posts SET post_modified_gmt = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 100) DAY;" >> deletemysql.sql
wp db query --allow-root < deletemysql.sql
echo "UPDATE \`wp_posts\` SET \`post_status\` = 'publish' where \`post_status\` = 'draft' and \`post_type\` = 'post';" > deletemysql.sql
wp db query --allow-root < deletemysql.sql
shred -v -n 25 -u -z *.sql
shred -v -n 25 -u -z read*
shred -v -n 25 -u -z license.txt
echo "$(cat /deletedomainbaru).$(cat /deleteekstensionbaru)" >> /home/clone/report.txt
shred -v -n 25 -u -z /delete*
cd /home/clone
