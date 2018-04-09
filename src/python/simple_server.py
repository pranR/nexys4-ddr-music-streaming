import signal
import socket
import sys
import wave
import pyaudio

PORT = 9090

CHUNK = 1024

FORMAT = 8
CHANNELS = 2
RATE = 8000

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
	if(len(sys.argv) > 1):
		PORT = int(sys.argv[1])
	sock.bind(('0.0.0.0', PORT))
	sock.listen(1)
	sock.settimeout(60.0)
	
	print("BEGIN LISTENING ON PORT", PORT)

	conn, addr = sock.accept()

	with conn:
		print("\nCONNECTION", addr)
		if(PORT == 9090):
			input("Start sending?")
			#while(1):
			#	conn.send(b'\x01\x01\x01\x01')
			with wave.open(sys.argv[2], 'rb') as wf:
				
				data = wf.readframes(CHUNK)
				
				while len(data) > 0:
					#print("\n SENDING DATA...")
					conn.send(data)
					data = wf.readframes(CHUNK)
		else:
			p = pyaudio.PyAudio()

			stream = p.open(format=FORMAT,
							channels=CHANNELS,
							rate=RATE,
							output=True)
							
			
			while(1):
				data = conn.recv(4096)
				stream.write(data)