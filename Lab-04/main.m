% Lab 04 - Caixa Preta e Caixa Cinza

function main()

    dExp = linspace(0,350,11);
    pExp = [0.75 0.95 1 1 0.8 0.4 0.3 0.3 0.05 0.15 0.1];

    % Exerc�cio 1: Abra uma nova figura e gere o gr�fico de pExp em fun��o de 
    % dExp, utilizando o comando bar. Adicione informa��es � sua figura 
    % utilizando os comandos xlabel e ylabel.

    figure
    hold on
    bar(dExp, pExp)
    xlabel('Dist�ncia Perpendicular (m)')
    ylabel('Probabilidade de Detec��o')

    % Exrc�cio 2a: Encontre o polin�mio que melhor representa a fun��o P = f(d), 
    % no sentido de m�nimos quadrados, considerando os valores experimentais 
    % pExp e dExp. Para isso, utilize a fun��o polyfit. Escolha uma ordem 
    % qualquer para o polin�mio. 

    P1 = polyfit(dExp, pExp, 3);

    % Exerc�cio 2b: Crie um vetor de dist�ncias d = 0:350. Para o polin�mio 
    % calculado em (a), encontre qual o valor de P para cada valor de d. Para 
    % isso, utilize a fun��o polyval.

    d1 = 0:350;
    M1 = polyval(P1, d1);

    % Exerc�cio 2c: Utilize um loop for para variar a ordem do polin�mio 
    % entre 1 e 6. Utilize o comando subplot para dividir a figura em 6 partes 
    % (3 linhas por 2 colunas). Em cada uma delas, fa�a um gr�fico comparando 
    % os valores experimentais dExp e pExp e o valor obtido com a interpola��o 
    % polinomial. Utilize o comando title para informar no t�tulo de cada 
    % subplot qual foi a ordem do polin�mio utilizado. Utilize os comandos 
    % xlabel e ylabel para adicionar informa��es � figura. 

    for i = 1:6
        P2 = polyfit(dExp, pExp, i);
        M2 = polyval(P2, d1);

        subplot(3, 2, i);
        hold on
        axis([-50 400 0 1.1]);
        bar(dExp, pExp, 'm');
        plot(d1, M2, 'LineWidth', 2);
        title(['Ordem ', num2str(i)]);
    end

    % Exerc�cio 2d: Repita o item (c) mas, em vez de limitar a dist�ncia a 350m, 
    % estenda-a at� 1000m. Gere uma nova figura semelhante � gerada em (c), mas 
    % com o novo limite da dist�ncia.

    d2 = 0:1000;

    for i = 1:6
        P3 = polyfit(dExp, pExp, i);
        M3 = polyval(P3, d2);

        subplot(3, 2, i);
        hold on
        axis([-50 400 0 1.1]);
        bar(dExp, pExp, 'g');
        plot(d2, M3, 'LineWidth', 2);
        title(['Ordem ', num2str(i)]);
    end
    
    for a_array = [50 100 200]
        figure
        hold on
        P4 = calc_prob_teor(a_array)
    end
    
end

% Exerc�cio 3a: crie uma subfun��o calc_prob_teor que tome como entrada o 
% valor de a (escalar) e o valor de d (vetorial) e retorne a probabilidade
% P. 

function P = calc_prob_teor(a, d)
    P = 1 - exp(-(a./d).^3);
end

% Exerc�cio 3b: Crie uma fun��o local_cost que tome como par�metro a 
% constante a e os valores experimentais dExp e pExp e que retorne como 
% sa�da o custo J. A fun��o deve chamar a fun��o calc_prob_teor para 
% calcular a probabilidade te�rica pTeor para os pontos dExp considerando
% o par�metro a. Em seguida, deve calcular J como o erro quadr�tico m�dio, 
% ou erro RMS (RMSE = root mean squared error), entre pTeor e pExp. Para
% calcular o erro RMS, calcule as diferen�as elemento a elemento, eleve ao
% quadrado, calcule a m�dia e calcule a raiz quadrada. 

function J = local_cost(a, dExp, pExp)
    pTeor = calc_prob_teor(a, dExp);
    % J = sqrt(mean((pTeor - pExp).^2));
    J = rms(pTeor - pExp);
end