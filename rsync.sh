
# --recursive is required if you want rsync to look inside the directory you specify
#
# If you specify a destination folder or file that does not yet exist, rsync
# will create it for you

# Source folders or files always have to exist to be transferred

# By default, I believe if you specify a destination that already exists, it
# will overwrite the destination if the source and the destination do not match
# in either file size or last modified timestamp. You can set options to change
# this default behavior, though.

# Source has an ending "/"
# The CONTENTS of source-folder will be pasted INSIDE dest-folder.
# It does not matter whether dest-folder has a closing "/" or not
rsync --recursive username@server:/root/source-folder/ /root/dest-folder/

# Source has no ending "/"
# The folder source-folder itself and all its contents will be copied
# INSIDE dest-folder. It does not matter whether dest-folder has a closing "/" or not
rsync --recursive username@server:/root/source-folder /root/dest-folder/



