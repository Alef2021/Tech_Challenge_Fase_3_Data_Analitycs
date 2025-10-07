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

# Tech Challenge - Fase 3: Análise PNAD-COVID19 para Planejamento Hospitalar

## 🎯 Objetivo do Projeto

Este projeto, desenvolvido como parte do curso de Pós-Graduação em Data Analytics da **POS TECH**, visa analisar o comportamento da população brasileira durante a pandemia da COVID-19. O foco é extrair **indicadores cruciais** a partir dos microdados da PNAD-COVID19 do IBGE (referentes a Julho, Setembro e Novembro de 2020) para auxiliar um grande hospital no **planejamento e tomada de decisões estratégicas em um novo surto**.

* **Página Oficial:** [IBGE - PNAD COVID-19](https://covid19.ibge.gov.br/pnad-covid/)

## 💡 Análise Detalhada dos Indicadores

A análise dos dados revelou padrões importantes em três dimensões principais:

---

### 1. Perfil da População e Localização

* **Faixa Etária:** A maior concentração de casos positivos está na população economicamente ativa, na faixa de **30 a 49 anos**, que registrou 32.384 casos, seguida pelas faixas de 50-64 anos (15.912 casos) e 18-29 anos (13.101 casos).
* **Gênero:** Há um predomínio de casos no sexo feminino, que representa **55,2%** do total de positivos, contra 44,8% do sexo masculino.
* **Localização (Urbana/Rural):** A **área urbana** concentra a vasta maioria dos casos positivos, com 64.856 ocorrências, um número quase 7 vezes maior que os 9.478 casos da área rural.
* **Localidades de Risco (UF):** Os estados com mais casos positivos na amostra foram **Maranhão, Rio de Janeiro e São Paulo**.
* **População Estudante:** A população que estuda representa uma parcela significativa dos casos, correspondendo a **47,4%** do total de infectados.

---

### 2. Caracterização Clínica (Sintomas e Testagem)

* **Sintomas Prevalentes:** Entre os pacientes que testaram positivo, os sintomas mais frequentemente relatados foram **Dor de Cabeça, Tosse e Febre**. Perda de Olfato/Paladar, Fadiga e Coriza também se mostraram relevantes.
* **Predominância de Casos Assintomáticos:** Uma parcela massiva de **87,2%** dos infectados declarou-se **assintomática**. A contagem de casos por faixa etária confirma que os assintomáticos (em vermelho/rosa) superam em muito os sintomáticos (em roxo) em todos os grupos etários.
* **Testagem:** O teste rápido por punção digital, **Sangue (Dedo)**, foi o mais realizado, com mais de 50.000 execuções. O **SWAB (RT-PCR)** aparece em segundo lugar, com pouco mais de 40.000 testes, seguido pelo de **Sangue (Veia)**.

---

### 3. Comportamento e Impacto Econômico

* **Situação de Trabalho:** A atividade laboral se mostrou um fator relevante de exposição. Dos indivíduos que testaram positivo, **54,1% trabalharam** na semana de referência.
* **Modalidade de Trabalho:** O trabalho presencial foi um fator de altíssimo risco. Dos casos positivos entre a população trabalhadora, **87,7%** ocorreram em pessoas que exerceram suas atividades de forma **presencial ou no local de costume**.
* **Ocupação de Risco:** Profissionais da saúde (técnicos e de nível superior), outras profissões de nível superior (advogado, engenheiro, etc.), e auxiliares de escritório estão entre as categorias com maior número de casos. A faixa etária de **30 a 49 anos concentra o maior número de casos em todas as principais ocupações**.
* **Distanciamento Social:** A principal medida de distanciamento adotada tanto por assintomáticos quanto por sintomáticos foi **"Ficou em casa e só saiu em caso de necessidade básica"**.

---

## 🏥 Ações Estratégicas para o Hospital em um Novo Surto

Com base nos indicadores analisados, as seguintes ações são recomendadas para o hospital:

1.  **Monitoramento Geográfico e Demográfico Focado:** Implementar um sistema de alerta para monitorar a taxa de positividade, focando em **áreas urbanas** e nos estados de maior incidência, como **Maranhão, Rio de Janeiro e São Paulo**. Direcionar recursos de forma proativa para a população economicamente ativa (**30-49 anos**), que representa o principal vetor de transmissão.
2.  **Campanhas de Comunicação Segmentadas:** Desenvolver campanhas de prevenção direcionadas aos grupos de maior risco: a população de **30 a 49 anos**, a **população estudantil** (que compõe 47,4% dos casos), e profissionais de ocupações com alta exposição ao trabalho presencial (87,7% dos casos em trabalhadores).
3.  **Planejamento de Triagem para Assintomáticos:** Dada a esmagadora maioria de **casos assintomáticos (87,2%)**, criar protocolos de testagem que não dependam da presença de sintomas. A testagem ativa em empresas e instituições de ensino é fundamental para identificar e isolar os focos de transmissão silenciosa.
4.  **Gestão de Estoques Baseada em Sintomas:** Gerenciar o estoque de medicamentos com base nos sintomas mais prevalentes (**analgésicos para dor de cabeça, antitérmicos para febre**) e nos mais graves (**equipamentos de suporte respiratório para dificuldade de respirar**).
5.  **Fortalecer a Comunicação sobre Isolamento:** A comunicação do hospital deve ser clara sobre a importância do isolamento imediato para **qualquer pessoa com teste positivo, com ou sem sintomas**.

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python & SQL
* **Banco de Dados:** PostgreSQL
* **Cloud:** Amazon RDS
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