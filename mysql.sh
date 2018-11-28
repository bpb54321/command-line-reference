# Stop MySQL Server
sudo launchctl unload -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist

# Reset file permissions (if files were modified by Git)
# MySQL has to be able to rwx all files in the data directory
sudo chmod -R 777 .

# Start MySQL Server
sudo launchctl load -F /Library/LaunchDaemons/com.oracle.oss.mysql.mysqld.plist

# Reset password on MySQL server

# Stop the mysqld server.  Typically this can be done by from 'System Prefrences' > MySQL > 'Stop MySQL Server'

# Start the server in safe mode with privilege bypass
sudo /usr/local/mysql/bin/mysqld_safe --skip-grant-tables

# In a new terminal window:
sudo /usr/local/mysql/bin/mysql -u root

# In the mysql client, tell the server to reload the grant tables so that account-management statements work:
mysql> flush privileges;

# Reset the password
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';