#!/bin/bash

echo "backup ~./.aliases"

backupfile=./aliases/aliases.sh

echo "#!/bin/bash" > $backupfile
echo "location=~/.aliases" >> $backupfile

echo "echo \"\" > \$location" >> $backupfile
echo "" >> $backupfile

awk '!/^$/ { print $0 }' ~/.aliases | while read line; do
echo "echo \"$line\" >> \$location" >> $backupfile
done
