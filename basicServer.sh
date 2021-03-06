#!/bin/bash

# for simplification, I will currently just generate TCP traffic, no UDP traffic
# traffic will be generated with iperf


iperf -s &
pids=$!
sleep 12
kill $pids

# the network traffic is measured using tcpdump

iperf -c 192.168.14.175 -t 10 -r | sudo tcpdump -i wlan0 -w output_file dst or src 192.168.14.175 &
pid=$!
sleep 12
kill $pid


# network stats are generated by tcptrace
tcptrace -r -l output_file | egrep "throughput|RTT avg:"

#clear up files generated
rm -f output_file 

echo "Test Complete"

