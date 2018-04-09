clear all
circularBuffer = zeros(1, 44100);
fileID = fopen('music.txt', 'r');
music = fscanf(fileID, '%x').';
filteredMusicFile = fopen('filteredMusic.txt', 'w');

writeAddress = 1;
readAddress = 1;

delay = hex2dec('1000');%LUT(mod(sample, length(LUT)) + 1);

for sample = 1:length(music)
    circularBuffer(writeAddress) = music(sample);
    filteredSample = int16(int16(bitshift(music(sample), -1)) + int16(bitshift(circularBuffer(readAddress), -1)));
    fprintf(filteredMusicFile, '%x\n', filteredSample);
    
    if writeAddress + 1 > length(circularBuffer)
        readAddress = 1 - delay;
    else
        readAddress = (writeAddress + 1 - delay);
    end
    
    if readAddress <= 0
        readAddress = readAddress + length(circularBuffer);
    end
        
    writeAddress = writeAddress + 1;
    
    if (writeAddress > length(circularBuffer))
        writeAddress = 1;
    end
end
    