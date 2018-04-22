# nexys4-ddr-music-streaming

# Nexys 4 DDR Music Streaming System

# Streams music from a PC server to Nexys 4 DDR board and outputs audio to networked speaker with Bluetooth controller.

# How to use:
1. Setup Vivado project in /src
2. Setup SDK software in /sdk
3. Run /python/simple_server.py on two networked machines, one as server, one as networked speaker. (Edit COM# and TCP IP address and ports)
4. Start bluetooth controller using /python/play_pause.py.
5. Start/stop streaming by key-press on Bluetooth controller.

# Repository Structure:

/VIP/ChorusFilterTester
  Chorus Filter custom IP
  
/android
  Bluetooth android app
  
/doc
  Documentation
  
/python
  Python server and bluetooth apps
  
/scripts
  Other supporting scripts
  
/sdk
  Xilinx SDK software application that runs on Vivado design
  
/src
  Vivado project including custom IP repository
  
# Authors:
Ruben Tjhie
Pranali Rathi
Farhad Yusufali


