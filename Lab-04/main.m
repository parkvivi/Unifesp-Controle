% Lab 04 - Caixa Preta e Caixa Cinza

function main()

    dExp = linspace(0,350,11);
    pExp = [0.75 0.95 1 1 0.8 0.4 0.3 0.3 0.05 0.15 0.1];

    % Exercício 1: Abra uma nova figura e gere o gráfico de pExp em função de 
    % dExp, utilizando o comando bar. Adicione informações à sua figura 
    % utilizando os comandos xlabel e ylabel.

    figure
    hold on
    bar(dExp, pExp)
    xlabel('Distância Perpendicular (m)')
    ylabel('Probabilidade de Detecção')

    % Exrcício 2a: Encontre o polinômio que melhor representa a função P = f(d), 
    % no sentido de mínimos quadrados, considerando os valores experimentais 
    % pExp e dExp. Para isso, utilize a função polyfit. Escolha uma ordem 
    % qualquer para o polinômio. 

    P1 = polyfit(dExp, pExp, 3);

    % Exercício 2b: Crie um vetor de distâncias d = 0:350. Para o polinômio 
    % calculado em (a), encontre qual o valor de P para cada valor de d. Para 
    % isso, utilize a função polyval.

    d1 = 0:350;
    M1 = polyval(P1, d1);

    % Exercício 2c: Utilize um loop for para variar a ordem do polinômio 
    % entre 1 e 6. Utilize o comando subplot para dividir a figura em 6 partes 
    % (3 linhas por 2 colunas). Em cada uma delas, faça um gráfico comparando 
    % os valores experimentais dExp e pExp e o valor obtido com a interpolação 
    % polinomial. Utilize o comando title para informar no título de cada 
    % subplot qual foi a ordem do polinômio utilizado. Utilize os comandos 
    % xlabel e ylabel para adicionar informações à figura. 

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

    % Exercício 2d: Repita o item (c) mas, em vez de limitar a distância a 350m, 
    % estenda-a até 1000m. Gere uma nova figura semelhante à gerada em (c), mas 
    % com o novo limite da distância.

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

% Exercício 3a: crie uma subfunção calc_prob_teor que tome como entrada o 
% valor de a (escalar) e o valor de d (vetorial) e retorne a probabilidade
% P. 

function P = calc_prob_teor(a, d)
    P = 1 - exp(-(a./d).^3);
end

% Exercício 3b: Crie uma função local_cost que tome como parâmetro a 
% constante a e os valores experimentais dExp e pExp e que retorne como 
% saída o custo J. A função deve chamar a função calc_prob_teor para 
% calcular a probabilidade teórica pTeor para os pontos dExp considerando
% o parâmetro a. Em seguida, deve calcular J como o erro quadrático médio, 
% ou erro RMS (RMSE = root mean squared error), entre pTeor e pExp. Para
% calcular o erro RMS, calcule as diferenças elemento a elemento, eleve ao
% quadrado, calcule a média e calcule a raiz quadrada. 

function J = local_cost(a, dExp, pExp)
    pTeor = calc_prob_teor(a, dExp);
    % J = sqrt(mean((pTeor - pExp).^2));
    J = rms(pTeor - pExp);
end