#!/bin/sh
echo -n "$LICENSE" > /workdir/.license

echo "arguments: $@"
java -jar /workdir/CredHunter.jar -l /workdir/.license $@