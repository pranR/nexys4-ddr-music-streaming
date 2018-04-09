import scipy.io.wavfile
import numpy as np

rate, data = scipy.io.wavfile.read('music.wav')

filteredData = []
with open('filteredMusic.txt', 'r') as musicFile:
	for line in musicFile:
		sampleValue = int((line.split()[0]), 16)
		filteredData.append(sampleValue)

filteredData = np.asarray(filteredData, dtype=np.int8)
scipy.io.wavfile.write('filteredMusic.wav', rate, filteredData)

		
