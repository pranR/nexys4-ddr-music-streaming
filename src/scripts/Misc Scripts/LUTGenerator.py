import math

numSamples = 44100 
frequency = 1; #Hz
amplitude = 441
yOffset = 1764;

with open('LUT.txt', 'a') as LUTFile:
	for sampleNum in range(0, numSamples):
		sample = amplitude*math.sin(2*math.pi*frequency* (float(sampleNum)/numSamples)) + yOffset;
		sampleHexString = format(int(sample), '04x');
		LUTFile.write("%s\n" %sampleHexString);
		
	

	



