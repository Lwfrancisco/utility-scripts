#!/bin/sh

# Create Loopback Device
pacmd load-module module-loopback latency_msec=5

# Start pavucontrol. Change loopback device in recording tab to input
# and change loopback device in playback tab to output.
#pavucontrol
