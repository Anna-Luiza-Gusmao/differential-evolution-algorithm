clear all; % Limpa todas as variáveis
close all; % Fecha todas figuras
clc; % Limpa a tela

function [minFX] = main(numVAR, tamPOP, numGER)
  % Mínimo e máximo da função Rastrigin
  xmin = -5.12;
  xmax = 5.12;

  % Fator de escala
  F = 0.8;

  % Gerando a população inicial
  POP = xmin + rand(tamPOP,numVAR) .* (xmax - xmin);
  FX = calculaFX(POP);

  % Índice do melhor indivíduo
  [~, bestIdx] = min(FX);

  for g = 2:numGER
      for i = 1:tamPOP
          j = randperm(numVAR,1);
          r = randperm(tamPOP,3);

          % Estratégia de mutação DE/best/1
          POPnovo = POP(bestIdx, :) + F * (POP(r(2), :) - POP(r(3), :));

          % Garante que os novos indivíduos não ultrapassem os limites do espaço de busca
          POPnovo = min(POPnovo,xmax);
          POPnovo = max(POPnovo,xmin);

          for d = 1:numVAR
              if ((rand <= 0.5) && (d ~= j))
                  POPnovo(d) = POP(i,d);
              end
          end

          FXnovo = calculaFX(POPnovo);

          if (FXnovo <= FX(i))
              POP(i,:) = POPnovo;
              FX(i) = FXnovo;
          end
      end

      % Atualiza o índice do melhor indivíduo
      [~, bestIdx] = min(FX);

      % Plot da população
      plot(POP(:,1),POP(:,2),'ro');
      axis([xmin xmax xmin xmax]);
      xlabel(num2str(g));
      grid on;
      % pause(0.1);
      drawnow;

      % Atualiza o fator de escala
      F = 0.5 + rand / 2; % F varia entre 0.5 e 1
  end

  minFX = min(FX);
  % disp("Valor da função Rastrigin minimizada: "), disp(min(FX))
