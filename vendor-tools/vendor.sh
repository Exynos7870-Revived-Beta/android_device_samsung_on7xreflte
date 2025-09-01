if [ "$1" = "h" ]; then
    echo "1. a3y17lte dump"
    echo "2. a7y17lte dump"
    echo "3. on7xreflte dump"
fi

if [ "${1}" ] && [ "${2}" ] && [ "${3}" ] && [ "${4}" ] ; then
    ./extract-files.sh -n -pfs proprietary-files_a3y17lte.txt "${1}" \
                          -n -pfs proprietary-files_a7y17lte.txt "${2}" \
                          -n -pfs proprietary-files_on7xreflte.txt "${3}"
else
    ./extract-files.sh -n -pfs proprietary-files_a3y17lte.txt "/home/slavevm/dumps/A320FXXS8CTI4" \
                          -n -pfs proprietary-files_a7y17lte.txt "/home/slavevm/dumps/A720SKSU5CUJ2" \
                          -n -pfs proprietary-files_on7xreflte.txt "/home/slavevm/dumps/A600FNXXU9CVB1"
fi
