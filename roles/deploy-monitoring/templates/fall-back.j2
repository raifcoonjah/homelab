#!/bin/bash

################################
# uses ./fall-back.sh
# raifcoonjah@proton.me
# Check if Spider is alive != fallback to replicated vm, else == stop VM!
################################

# Get the IP address of Spider
spider_ip="192.168.100.8"

# Number of NC fails before triggering fallback procedure
nc_fail_threshold=3

VMID=1101

# Ping Spider
ping -c 1 -w 1 $spider_ip

# If the ping fails, then run nc
if [[ $? -ne 0 ]]; then
    # Check with nc multiple times
    for i in $(seq 1 $nc_fail_threshold); do
        nc -z -w 5 $spider_ip 10022
        if [[ $? -eq 0 ]]; then
            break
        fi
    done

    # If nc failed all times, then start the VM
    if [[ $i -eq $nc_fail_threshold ]]; then
        echo "(spider)Pi-hole server is not responding. Beginning fallback procedure: Starting VM$VMID connection will be restablished in a few seconds..."
        qm start $VMID
    else
        echo "Spider is in normal state. [ignore]"
    fi
else
    echo "Spider is well and alive!"
fi

# Once the nc command starts responding again, stop the VM
nc -vz -w 5 $spider_ip 10022
if [[ $? -eq 0 ]]; then
    echo "(spider)Pi-hole appears to be alive again, undoing fallback procedure. Connection resume in a few seconds."
    qm stop $VMID
    exit 1
fi