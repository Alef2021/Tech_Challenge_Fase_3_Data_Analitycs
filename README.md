# Tech Challenge - Fase 3: Análise PNAD-COVID19 para Planejamento Hospitalar

## 🎯 Objetivo do Projeto

Este projeto, desenvolvido como parte do curso de Pós-Graduação em Data Analytics da **POS TECH**, visa analisar o comportamento da população brasileira durante a pandemia da COVID-19. O foco é extrair **indicadores cruciais** a partir dos microdados da PNAD-COVID19 do IBGE aos 3 meses (referentes a Julho, Setembro e Novembro de 2020) para auxiliar um grande hospital no **planejamento e tomada de decisões estratégicas em um novo surto**

* **Página Oficial:** [IBGE - PNAD COVID-19](https://covid19.ibge.gov.br/pnad-covid/)



## 📊 Variáveis Selecionadas

Para a construção da solução, foram selecionados **20 questionamentos-chave** da pesquisa, além de 4 variáveis de controle para identificação única dos registros. 
A seleção abrange as três dimensões solicitadas no desafio: Características da População, Sintomas Clínicos e Características Econômicas.

| Variável Original | Descrição da Variável | Dimensão |
| :--- | :--- | :--- |
| `V1013` | Mês da pesquisa | Identificação/Controle |
| `UF` | Unidade da Federação | Característica da População |
| `V1022` | Situação do Domicílio (Urbana/Rural) | Característica da População |
| `A002` | Idade | Característica da População |
| `A003` | Sexo | Característica da População |
| `A006` | Frequenta escola ou creche | Característica da População |
| `B0015` | Sintoma: Dor de Cabeça | Sintomas Clínicos |
| `B0011` | Sintoma: Febre | Sintomas Clínicos |
| `B0012` | Sintoma: Tosse | Sintomas Clínicos |
| `B0014` | Sintoma: Dificuldade de respirar | Sintomas Clínicos |
| `B0018` | Sintoma: Nariz entupido ou escorrendo (Coriza) | Sintomas Clínicos |
| `B0019` | Sintoma: Fadiga | Sintomas Clínicos |
| `B00111`| Sintoma: Perda de olfato ou paladar | Sintomas Clínicos |
| `B009B` | Teste: Resultado do exame de SWAB/PCR | Sintomas Clínicos |
| `B009D` | Teste: Resultado do teste rápido por punção digital | Sintomas Clínicos |
| `B009F` | Teste: Resultado do teste por sangue da veia | Sintomas Clínicos |
| `B011` | Medida de Distanciamento Social | Comportamento/Saúde |
| `C001` | Trabalhou na semana de referência | Econômica |
| `C007C` | Tipo de Ocupação | Econômica |
| `C007E` | Número de empregados | Econômica |
| `C012` | Local onde exercia o trabalho (Presencial/Remoto) | Econômica |
| `A001` | Número de ordem do morador | Identificação/Controle |
| `V1008` | Número de seleção do domicílio | Identificação/Controle |
| `UPA` | Unidade Primária de Amostragem | Identificação/Controle |

## 💡 Análise Detalhada dos Indicadores

A análise dos dados de Julho, Setembro e Novembro de 2020 revelou padrões importantes:

#### 1. Perfil da População e Localização
* **Faixa Etária:** A maior concentração de casos positivos está na faixa de **30 a 49 anos**, seguida pela de 18 a 29 anos, indicando alta transmissão na população economicamente ativa.
* **Gênero:** Há uma distribuição relativamente igual, com um leve **predomínio feminino** entre os casos positivos.
* **Localização (Urbana/Rural):** A **área urbana** concentra a vasta maioria dos casos positivos, refletindo a maior densidade populacional.
* **Localidades de Risco (UF):** **São Paulo** lidera em número absoluto de casos positivos, seguido por outros grandes centros urbanos, o que demanda atenção especial a essas regiões.

#### 2. Caracterização Clínica (Sintomas e Testagem)
* **Sintomas Prevalentes:** **Dor de cabeça**, **Tosse** e **Febre** foram os sintomas mais frequentemente relatados entre os pacientes que testaram positivo. A perda de olfato/paladar também se mostrou um indicador relevante.
* **Casos Assintomáticos:** Uma parcela significativa dos infectados (cerca de 30-40%) se declarou **assintomática**, com maior incidência em faixas etárias mais jovens. Este é um indicador crítico, pois representam um foco de transmissão silenciosa.
* **Testagem:** O teste **SWAB (RT-PCR)** foi o mais realizado, indicando uma busca por diagnósticos mais precisos durante o período analisado.

#### 3. Comportamento e Impacto Econômico
* **Distanciamento Social:** A maioria da população positiva (tanto sintomática quanto assintomática) relatou ter ficado em casa, saindo apenas para necessidades básicas. No entanto, uma parcela relevante apenas reduziu o contato, indicando um ponto de falha no bloqueio da transmissão.
* **Ocupação:** Profissionais de **comércio e vendas**, **motoristas** e **trabalhadores da indústria** estão entre as ocupações com maior número de casos, sugerindo maior exposição ao vírus.
* **Modalidade de Trabalho:** Indivíduos que trabalharam de forma **presencial ou no local de costume** apresentaram uma proporção maior de casos positivos em comparação com aqueles em trabalho remoto.

---

## 🏥 Ações Estratégicas para o Hospital em um Novo Surto

Com base nos indicadores analisados, as seguintes ações são recomendadas para o hospital:

1.  **Monitoramento Geográfico Focado:** Estabelecer um sistema de alerta que monitore a taxa de positividade por região (com foco nas áreas urbanas e nos estados de maior incidência, como São Paulo) para direcionar recursos (leitos, equipes, insumos) de forma proativa.

2.  **Campanhas de Comunicação Segmentadas:** Desenvolver campanhas de prevenção direcionadas aos grupos de maior risco identificados: a população economicamente ativa (30-49 anos) e profissionais de ocupações de alta exposição. A comunicação deve focar em segurança no ambiente de trabalho e nos sintomas mais comuns.

3.  **Planejamento de Triagem para Assintomáticos:** Criar protocolos de testagem que não dependam exclusivamente da presença de sintomas. A testagem ativa em empresas de setores críticos e na comunidade é fundamental para identificar e isolar os focos de transmissão silenciosa.

4.  **Gestão de Estoques Baseada em Sintomas:** Gerenciar o estoque de medicamentos e equipamentos com base nos sintomas mais prevalentes (antitérmicos, analgésicos) e nos mais graves (equipamentos de suporte respiratório), garantindo a preparação para os cenários clínicos mais prováveis.

5.  **Fortalecer a Comunicação sobre Isolamento:** A comunicação do hospital deve ser clara e incisiva sobre a importância do isolamento imediato ao primeiro sinal de sintoma, educando a população de que mesmo casos leves têm alto potencial de transmissão.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python & SQL
* **Processamento de Dados:** Apache Spark (PySpark)
* **Manipulação de Dados:** Pandas
* **Visualização de Dados:** Matplotlib & Seaborn
* **Ambiente de Desenvolvimento:** Jupyter Notebook, VS Code

---

## 🚀 Como Clonar o Projeto

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/Alef2021/Tech_Challenge_Fase_3_Data_Analitycs.git
    ```



## 📚 Modelo de Dados (MER)

O modelo utilizado segue o conceito de **Star Schema**. A arquitetura conta com tabelas Fato (Dados Pessoais, Trabalho, Sintomas, Isolamento Social e Testes COVID) que se conectam a diversas tabelas Dimensão (criadas a partir do dicionário de dados). Essa estrutura garante a integridade, otimiza as consultas e facilita a criação de análises. O diagrama completo está disponível no arquivo `MER.md`.

---

## ✍️ Autores

* Alef de Souza Pereira - RM 362855
* Alberto Marchiori - RM 362799
* Leticia Lauria Lopes - RM 362795