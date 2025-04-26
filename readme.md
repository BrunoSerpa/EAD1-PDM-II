**Questionário – Fundamentos de Flutter, Dart e Ambiente de Desenvolvimento**

1. Explique a diferença entre linguagens compiladas para código nativo e linguagens interpretadas. Quais as vantagens e desvantagens de cada abordagem?
> Nas **linguagens compiladas** o código fonte é **traduzido por um compilador diretamente** para o código da máquina (geram arquivos executáveis binários independentes), tendo como vantagens desempenho máximo e execução mais rápida e desvantagem ciclo de desenvolvimento mais lento, menos flexível para alterações rápidas (Exemplo: C++, Dart). Já nas **linguagens interpretadas** o código é lido e **executado linha por linha por** um **interpretador** (dependem do interpretador em runtime), tendo como vantagens desenvolvimento ágil e prototipagem rápida e desvantagem, desempenho inferior, mais consumo de recursos em tempo de execução (Exemplo: Python, Javascript).

2. O Dart pode ser compilado tanto para código nativo quanto para JavaScript. O que isso quer dizer sobre sua flexibilidade e uso em diferentes plataformas?
> Significa que **Dart é extremamente flexível**, **permitindo hot reload** em modo interpretado **durante o desenvolvimento**, sendo possível **compilar tanto para códigos nativos**, **gerando apps rápidos e otimizados** para dispositivos móveis e desktop, **quanto para Javascript, fazendo com que** apps **rodem diretamente no navegador**, aproveitando a sua ubiquidade.

3. Por que o Flutter consegue rodar em várias plataformas (mobile, web, desktop) mesmo sendo baseado em uma linguagem só? Qual o papel da engine  do Flutter nisso? 
> O Flutter roda em várias plataformas porque ele **não depende de componentes nativos** do sistema operacional (como botão, caixa de texto, etc.). Ele desenha tudo sozinho, **usando a** sua própria engine gráfica (**Skia**, responsável por desenhar todos os elementos gráficos na tela), na qual **fala direto com o sistema operacional** (Android, Windows, navegador, etc.).

4. Defina o que é portabilidade no contexto de desenvolvimento de software e explique como o Dart e Flutter promovem essa característica. 
> Portabilidade é a **capacidade de rodar o** mesmo **código-fonte em diferentes plataformas** com o mínimo ou nenhum ajuste. **Dart e Flutter** promovem portabilidade porque o Dart **pode ser compilado para vários alvos** (nativo ou web), e o Flutter **abstrai as diferenças dos sistemas operacionais na sua engine**. 

5. Compare os conceitos de compilador, interpretador e transpilador. Dê exemplos de situações em que cada um é utilizado. 
> O **compilador traduz código** fonte **para código** de máquina (ou **intermediário**) **antes da execução** (Exemplo: C++ compilado para .exe). O **interpretador executa o código** fonte **diretamente**, linha por linha. (Exemplo: Python rodando um .py). Já o **transpilador traduz código fonte** de uma linguagem **para outra linguagem**de alto nível, mantendo o nível de abstração, sem conversão para código de máquina. (Exemplo: Dart para JavaScript usando dart2js).

6. Ao instalar o Flutter, por que é importante configurar corretamente variáveis de ambiente como PATH? O que pode acontecer se isso não for feito? 
> Porque o sistema **precisa saber onde encontrar os comandos**. **Se não configurar** o PATH, Você **vai receber um erro** de "comando não encontrado" toda vez **ou vai** ter que **digitar o caminho completo** toda hora (péssima experiência), **Além disso** podem ocorrer **falhas em scripts automáticos**.

7. Descreva o que o comando flutter doctor verifica no ambiente de desenvolvimento  
> O comando **flutter doctor faz** uma **verificação completa do ambiente** Flutter. Ele **verifica** se **o Flutter SDK** está instalado corretamente, se **o Dart SDK** está funcionando, se **as plataformas de destino** (Android, iOS, Web, etc.) estão acessíveis, se **as ferramentas** (Android Studio, VS Code, emuladores, etc.) estão integradas e se **drivers e dependências** estão atualizados.

8. Dart é uma linguagem orientada a objetos, mas permite uma abordagem estruturada. Explique a diferença entre programação estruturada e orientada a objetos, com exemplos. 
>**Programação estruturada usa funções simples**, controle de fluxo **com if, for, while**. Por exemplo: ```int soma(int a, int b) { return a + b; }```. Já a **Programação orientada a objetos** **encapsula dados e comportamentos em classes**. Por exemplo: ```class Calculadora { int soma(int a, int b) { return a + b; }}```.

9. Como a tipagem de Dart (estática e opcionalmente forte) influencia na construção de aplicações robustas e seguras? 
> A **tipagem estática** do Dart **detecta erros de** tipo em **tempo de compilação**, evitando falhas em tempo de execução.
A **tipagem forte impede conversões automáticas** entre tipos **incompatíveis**, o que aumenta a robustez, segurança e confiabilidade das aplicações.

**Lista de Exercícios – Desafios Práticos em Dart**

1. Crie um programa que peça uma temperatura em graus Celsius e classifique da seguinte forma: abaixo de 0 → “Congelando”, entre 0 e 20 → “Frio”, entre 21 e 30 → “Agradável”, acima de 30 → “Quente”.
   ![código1](https://github.com/user-attachments/assets/59a63cd8-41a5-4adf-9aa1-06c01bec7369)

2. Peça ao usuário que digite uma senha (por exemplo, “dart123”) e repita a solicitação até que ele acerte. Ao final, exiba o número de tentativas até o acerto.
   ![código2](https://github.com/user-attachments/assets/0118e9c1-5597-4bc1-a330-847e8385d65a)

3. Faça um programa em Dart que solicite uma palavra ao usuário e informe: o número total de letras, quantas vogais ela possui
   ![código3](https://github.com/user-attachments/assets/743ff2b6-7469-4193-b412-c9366bb2efdd)
 
