#!/bin/bash

while true
do
	mpstat -P ALL 1 1 | tail -3 | awk {' gsub(",", ".", $3); gsub(",", ".", $12); print "host.cpu.usr,core=core"$2" "$3 "\nhost.cpu.idle,core=core"$2" "$12'} | /opt/dynatrace/oneagent/agent/tools/dynatrace_ingest -v
	sleep 10
done
