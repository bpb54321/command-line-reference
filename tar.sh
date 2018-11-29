# tar flags destination source
# Compresses a folder into a gzip
tar pczvf /var/www/tmp/assessment.georgetown.edu.tar.gz assessment.georgetown.edu

# Unzip in place
mkdir new_folder
cd new_folder

# Unzip the archive into the new folder
tar xzvf ../blogs.core.tar.gz
