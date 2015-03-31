#!/bin/bash
cd /root
rm journey/config.json
mv /config.json journey/
cd journey
./journey

