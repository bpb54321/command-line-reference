# WGET - Useful utility for making static HTML versions of websites
# https://www.gnu.org/software/wget/manual/wget.html

# -r: Recursively follow links (so get the whole site)
# -o: Output the wget login to the specified log file
wget -r https://myurl.com/mydirectory/ -o logfile