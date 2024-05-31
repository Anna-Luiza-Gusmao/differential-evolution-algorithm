numVAR = 2;
tamPOP = 30;
numGER = 50;
numRuns = 30;

sumMinFX = 0;

for run = 1:numRuns
  [minFX] = main(numVAR, tamPOP, numGER);
  sumMinFX = sumMinFX + minFX;
end

mediaMinFX = sumMinFX / numRuns;

disp('Média dos valores de minFX:');
disp(mediaMinFX);

