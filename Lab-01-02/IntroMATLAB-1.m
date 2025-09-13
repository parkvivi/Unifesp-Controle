% uma variável pode ser qualquer coisa
A = 2
A = 'Controle'
A = [1 2; 3 4]

% format clear -> somem as linhas brancas
% ';' no final indica que o resultado não será mostrado
% a função disp() mostra o resultado

a = 2;
b = 3;
c = a + b;

disp(c)
fprintf(1, '%1.0f, %1.0f, %1.0f\n', a, b, c)

% 'clear' limpa as variáveis
% 'clc' limpas a janela de comando

M = magic(3)    % cubo mágico -> soma das linhas e das colunas é igual
M^2             % M*M -> multiplicação de matriz

% para realizar operações com os elementos individuais da matriz: .* ./ .^
M.^2    % eleva cada elemento da matriz ao quadrado
M'      % matriz transposta

% help (função) -> mostra como usar a função

% arquivos
fopen()
fclose()

% b = a -> b recebe a
% b == a -> b é igual a a (afirmação lógica)
% b ~= a -> b é diferente de a (afirmação lógica)

t = 0:100; % cria vetor que varia de 0 a 100
t(3) % acessa a terceira posição de t (começa do 1, não do 0)
% C: 0-based; MATLAB: 1-based
t([3 4]) % elementos 3 e 4 de t

% não existem palavras reservadas no MATLAB (cuidado)
% pra usar i como unidade imaginária (recomendação)
i = sqrt(-1)

% for :: printa números de 1 a 10
for j = 1:10
    disp(j)

% notação e: 1.2e5 = 1.2*10^5
% número de euler: exp(x) = e^x

% abrindo arquivo pra criar um programa: edit nome.m, onde 'nome' é o nome do arquivo

% 2/3 = 0.7
% 20/30 = 0.67
% 200/300 = 0.667

% funções trigonométricas
sin()   % radianos
sind()  % graus

% log
log(x)      % logaritmo natural
log10(x)    % log base 10

% matriz e Vetor
V = [1 2 3 4]
Matriz = [1 2 3 4; 5 6 7 8] % 2x4

m = [1; 2; 3; 4; 5] % = [1 2 3 4 5]'

% whos (variável) -> dá informações a respeito da variável (tamanho, bytes, classe etc)

B = [1 2 3; 4 5 6; 7 8 9]
B(2, 3) % elemento na linha 2 e coluna 3 de B
B(:,2)  % coluna 2 inteira
B(3,:)  % linha 3 inteira

% complexo conjugado (aqui, i=sqrt(-1))
(2+6*i)'    % = 2-6*i
real(x)     % parte real de x
imag(x)     % parte imaginária de x
|x|         % módulo de x
ang(x)      % fase de x

% ideias para diagrama de bode
linspace(0, 10, 6)  % 6 números igualmente espaçados em escala linear entre 0 e 10
logspace(0, 2, 3)   % 3 números igualmente espaçados em escala logarítmica entre 10^0 e 10^2 
 
ones(x, y)  % matriz de x linhas e y colunas de 1s
zeros(x, y) % matriz de x linhas e y colunas de 0s
eye(x, y)   % matriz identidade de x linhas e y colunas

% matrizes aleatórias
rand(x, y)  % x >= y; gera números aleatórios entre x e y
randn(x, y) % distribuição normal padronizada

rand('seed', x) % inicializa / reinicializa a semente (ideal) 