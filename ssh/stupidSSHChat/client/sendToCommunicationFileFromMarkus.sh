#!/bin/bash
ssh -T user@192.168.140.113 "echo 'Philipp(SSH): $1' >> /home/user/scripts/communication;"
scp user@192.168.140.113:/home/user/scripts/communication .


