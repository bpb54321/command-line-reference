# Useful commands using find in bash

# Find a file or folder that is not owned by the user 'foo'
find . \! -user foo -print

# Recursively find all directories and change their owner:group
find . -type d -exec chown ${SERVER_USERNAME}:${SERVER_GROUP} {} \;

# Recursively find all files and change their owner:group
find . -type f -exec chown ${SERVER_USERNAME}:${SERVER_GROUP} {} \;

# Recursively find files, directories, and links and change their owner:group
find . -exec chown ${SERVER_USERNAME}:${SERVER_GROUP} {} \;