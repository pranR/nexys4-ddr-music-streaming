import serial

if __name__ == "__main__":
    #CHUNK = 1024
    #FORMAT = pyaudio.paInt16
    #CHANNELS = 2
    #RATE = 44100
	print("Connecting to COM6...")
	with serial.Serial('COM6') as com:
		while(1):
			user_in = input('Play/Pause? ')
			com.write(b'\x00\x00')

		com.close()
	print("DONE")