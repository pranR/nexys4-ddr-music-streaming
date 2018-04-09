import scipy.io.wavfile
import numpy

rate, data = scipy.io.wavfile.read('music.wav')


with open('music.txt', 'w') as musicFile:
	for i in range(len(data)):
		sampleValue = format(int(data[i]), '02x')
		musicFile.write("%s\n" %sampleValue)
