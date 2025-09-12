% Exerc�cio 1: Crie um vetor de tempo t, com valores entre 0 e 
% 5 segundos e passo de amostragem de 10 milissegundos. 

dt = 0.01;
t = 0:dt:5;

% Exerc�cio 2: Crie um vetor y tal que y = t^2. Crie tamb�m os vetores 
% yda e yia, que devem conter respectivamente a derivada temporal anal�tica 
% de y e o a integral temporal anal�tica de y. � sabido que yda = 2t e 
% que yia = t^3/3. 

y = t.^2;

yda = 2.*t;
yia = (t.^3)./3;

% Exerc�cio 3: Crie um vetor ydn representando a derivada temporal num�rica 
% de y. Para isso, aproxime a derivada por ?y/?t (aproxima��o de Euler).

ydn = (y(2:end) - y(1:end-1))/dt;
ydn = [ydn(1), ydn];

% Exerc�cio 4: Utilizando a fun��o plot, plote, no mesmo gr�fico, ydn em 
% fun��o de t e yda em fun��o de t. Utilize a fun��o legend para identificar 
% as curvas no gr�fico. Verifique se a aproxima��o num�rica representa 
% adequadamente a derivada anal�tica.

% figure 
% hold on
% plot(t, ydn, 'b-')
% plot(t, yda, 'g-')

% Exerc�cio 5: Crie um vetor z tal que z = t^2 + r, onde r � um ru�do branco 
% gaussiano com m�dia 0 e desvio padr�o 0.2. O ru�do branco pode ser gerado
% utilizando a fun��o randn.

r = 0 + 0.2*randn(size(t));
z = t.^2 + r

% Exerc�cio 6: � Utilize o comando figure para abrir uma nova figura. Plote, 
% no mesmo gr�fico, y e z em fun��o de t. Analise o efeito da adi��o de ru�do 
% branco.

% figure
% hold on
% plot(t, y, 'b-')
% plot(t, z, 'g-')

% Exerc�cio 7: Crie um vetor zdn representando a derivada num�rica de z. 
% Para isso, aproxime a derivada por ?z/?t (aproxima��o de Euler). 

zdn = (z(2:end) - z(1:end-1))/dt;
zdn = [zdn(1), zdn];

% Exerc�cio 8: Utilize o comando figure para abrir uma nova figura. Plote, 
% no mesmo gr�fico, ydn e zdn em fun��o de t. Verifique como a exist�ncia de 
% ru�do contamina a derivada num�rica. N�o se surpreenda com o resultado. 

% figure
% hold on
% plot(t, ydn, 'b-')
% plot(t, zdn, 'g-')

% Exerc�cio 9: Utilize o comando cumsum para calcular os vetores yin e zin 
% com a integral temporal num�rica de y e a integral temporal num�rica de z, 
% respectivamente. Abra uma nova figura e plote, no mesmo gr�fico, yia, yin 
% e zin. Analise o efeito do ru�do sobre a integral num�rica.

yin = cumsum(y).*dt;
zin = cumsum(z).*dt;

figure
hold on
plot(t, yia, 'b-')
plot(t, yin, 'g-')
plot(t, zin, 'r-')