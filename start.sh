#!/bin/bash
while read f1; do
    echo "sed -n '$f1' < data/ipawal > /deleteipawal" | bash -
    echo "sed -n '$f1' < data/userdbawal > /deleteuserdbawal" | bash -
    echo "sed -n '$f1' < data/passdbawal > /deletepassdbawal" | bash -
    echo "sed -n '$f1' < data/domainbaru > /deletedomainbaru" | bash -
    echo "sed -n '$f1' < data/ekstensionbaru > /deleteekstensionbaru" | bash -
    echo "cat data/passmysql > /deletepassmysql" | bash -
    echo "source build.sh" | bash -
done < "start.txt"
