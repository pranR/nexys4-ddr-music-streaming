clear all
fileID = fopen('LUT.txt', 'r');
LUT = fscanf(fileID, '%x').';
circularBuffer = zeros(1, 44100);
fileID = fopen('music.txt', 'r');
music = fscanf(fileID, '%x').';
filteredMusicFile = fopen('filteredMusic.txt', 'w');

writeAddress = 1;
readAddress = 1;

for sample = 1:length(music)
    circularBuffer(writeAddress) = music(sample);
    
    delay = LUT(mod(sample, length(LUT)) + 1);
    
    filteredSample = int16(int16(bitshift(3*music(sample), -2)) + int16(bitshift(circularBuffer(readAddress), -2)));
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
    