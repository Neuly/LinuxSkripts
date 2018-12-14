#!/bin/bash
ssh -T user@192.168.140.113 "export DISPLAY=:0;notify-send 'New message' 'check communication';"
