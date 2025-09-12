A = [1 2 3; 4 5 6; 7 8 9]
det(A) % determinante da matriz

% para float n�o se faz igualdade, se faz desigualdade com toler�ncias:
% ex: 2-t < x < 2+t => |x-2| < t,
% onde x �(float, double) e t � a toler�ncia

% eigenvalue, eigenvector
[v, a] = eig(A)
% v e a s�o matrizes de autovetores e autovalores
% cada coluna de v � um autovetor
% cada elemento da diagonal principal de a � um autovalor
% 'help eig' para mais informa��es

inv(A)

% compara��o matricial:
B = [1 2 3; 4 5 6; 1 2 3]
A == B % retorna uma matriz com 1 para os elementos iguais
% e 0 para os diferentes

find()

% matriz esparsa: sparse()

% any: pelo menos um
% all: todos

C = [1 2 3 -2 3 5 7 8]

all(C>0)
any(C>0)

% if all(C>0), disp('agua'), else, disp('fogo'), end

if all(C>0)
    disp('agua')
else
    disp('fogo')
end

% fun��es (exemplo: �rea)
function [S, P] = area(a,b,c)

% ...

return