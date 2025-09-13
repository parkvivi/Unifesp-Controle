% Exercício 1: Crie um vetor de tempo t, com valores entre 0 e 
% 5 segundos e passo de amostragem de 10 milissegundos. 

dt = 0.01;
t = 0:dt:5;

% Exercício 2: Crie um vetor y tal que y = t^2. Crie também os vetores 
% yda e yia, que devem conter respectivamente a derivada temporal analítica 
% de y e o a integral temporal analítica de y. É sabido que yda = 2t e 
% que yia = t^3/3. 

y = t.^2;

yda = 2.*t;
yia = (t.^3)./3;

% Exercício 3: Crie um vetor ydn representando a derivada temporal numérica 
% de y. Para isso, aproxime a derivada por ?y/?t (aproximação de Euler).

ydn = (y(2:end) - y(1:end-1))/dt;
ydn = [ydn(1), ydn];

% Exercício 4: Utilizando a função plot, plote, no mesmo gráfico, ydn em 
% função de t e yda em função de t. Utilize a função legend para identificar 
% as curvas no gráfico. Verifique se a aproximação numérica representa 
% adequadamente a derivada analítica.

% figure 
% hold on
% plot(t, ydn, 'b-')
% plot(t, yda, 'g-')

% Exercício 5: Crie um vetor z tal que z = t^2 + r, onde r é um ruído branco 
% gaussiano com média 0 e desvio padrão 0.2. O ruído branco pode ser gerado
% utilizando a função randn.

r = 0 + 0.2*randn(size(t));
z = t.^2 + r

% Exercício 6: – Utilize o comando figure para abrir uma nova figura. Plote, 
% no mesmo gráfico, y e z em função de t. Analise o efeito da adição de ruído 
% branco.

% figure
% hold on
% plot(t, y, 'b-')
% plot(t, z, 'g-')

% Exercício 7: Crie um vetor zdn representando a derivada numérica de z. 
% Para isso, aproxime a derivada por ?z/?t (aproximação de Euler). 

zdn = (z(2:end) - z(1:end-1))/dt;
zdn = [zdn(1), zdn];

% Exercício 8: Utilize o comando figure para abrir uma nova figura. Plote, 
% no mesmo gráfico, ydn e zdn em função de t. Verifique como a existência de 
% ruído contamina a derivada numérica. Não se surpreenda com o resultado. 

% figure
% hold on
% plot(t, ydn, 'b-')
% plot(t, zdn, 'g-')

% Exercício 9: Utilize o comando cumsum para calcular os vetores yin e zin 
% com a integral temporal numérica de y e a integral temporal numérica de z, 
% respectivamente. Abra uma nova figura e plote, no mesmo gráfico, yia, yin 
% e zin. Analise o efeito do ruído sobre a integral numérica.

yin = cumsum(y).*dt;
zin = cumsum(z).*dt;

figure
hold on
plot(t, yia, 'b-')
plot(t, yin, 'g-')
plot(t, zin, 'r-')
