# Tech Challenge - Fase 3: Análise PNAD-COVID19 para Planejamento Hospitalar

## 🎯 Objetivo do Projeto

Este projeto, desenvolvido como parte do curso de Pós-Graduação em Data Analytics da POS TECH - DATA ANALYTICS, visa analisar o comportamento da população brasileira durante a pandemia da COVID-19. O foco é extrair **indicadores cruciais** a partir dos microdados da PNAD-COVID19 do IBGE (Julho, Setembro e Novembro de 2020) para auxiliar um grande hospital no **planejamento e tomada de decisões estratégicas em um novo surto**.

---

## 📊 Perguntas e Variáveis Selecionadas

Para a análise, foram utilizados **24 questionamentos** (dentro do limite de 20 a 25) do microdado PNAD-COVID19, organizados em quatro dimensões:

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
| `B00111` | Sintoma: Perda de olfato ou paladar | Sintomas Clínicos |
| `B009B` | Teste: Resultado do exame de SWAB/PCR | Sintomas Clínicos |
| `B009D` | Teste: Resultado do teste rápido por punção digital | Sintomas Clínicos |
| `B009F` | Teste: Resultado do teste por sangue da veia | Sintomas Clínicos |
| `B011` | Medida de Distanciamento Social | Comportamento/Saúde |
| `C001` | Trabalhou na semana de referência | Econômica |
| `C007C` | Tipo de Ocupação | Econômica |
| `C007E` | Número de empregados | Econômica |
| `C012` | Local onde exercia o trabalho na semana de referência (Presencial, Remoto, Afastado) | Econômica |
| `A001` | Número de ordem do morador | Identificação/Controle |
| `V1008` | Número de seleção do domicílio | Identificação/Controle |
| `UPA` | Unidade Primária de Amostragem | Identificação/Controle |

---

## 💡 Análise Detalhada dos Indicadores

A análise dos dados de Julho, Setembro e Novembro de 2020 revelou padrões importantes:

1.  **Perfil da População e Localização:**
    * **Faixa Etária:** A maior concentração de casos positivos está na **faixa Adulto (13-59 anos)**.
    * **Gênero:** Há uma distribuição relativamente igual, com leve **predomínio feminino** entre os casos positivos.
    * **Localização (Urbana/Rural):** A **área urbana** concentra a vasta maioria dos casos positivos.
    * **Localidades de Risco (UF):** **São Paulo** lidera em número de casos positivos.

2.  **Caracterização Clínica (Sintomas e Testagem):**
    * **Sintomas:** O sintoma mais comum é a **Dor de Cabeça**, seguido por **Coriza** (Nariz entupido ou escorrendo) e **Fadiga**.
    * **Assintomáticos:** A proporção de **casos positivos assintomáticos** é significativa (aprox. **30%**).
    * **Resultados de Teste:** O **Teste Rápido (Sangue da Veia)** e o **SWAB/PCR** são os tipos de teste mais realizados.

3.  **Comportamento e Economia:**
    * **Situação de Trabalho (C001):** A maioria dos casos positivos **trabalhou na semana de referência**.
    * **Distanciamento Social (Com Sintomas):** A maior parte dos casos sintomáticos reportou ter ficado **"Rigorasamente em Isolamento Domiciliar"**.
    * **Comportamento Assintomático:** A maioria dos **assintomáticos positivos** reportou **"Diminuir o contato, mas continua saindo"** ou **"Manteve a rotina normal"**, reforçando a circulação de pessoas.
    * **Tipo de Ocupação (C007C):** Os **Trabalhadores dos serviços, vendedores do comércio e de mercados** e **Trabalhadores da produção de bens e serviços** representam a maioria dos casos entre os trabalhadores, indicando maior exposição.
    * **Local de Trabalho (C012):** A maioria dos trabalhadores positivos **exerceu suas atividades presencialmente**.

---

## 🏥 Ações Estratégicas para o Hospital em um Novo Surto

Com base nesta análise, o hospital deverá tomar as seguintes ações para o planejamento de um novo surto:

1.  **Foco em Recursos e Logística:**
    * **Alocação de Leitos:** Direcionar o **maior volume de recursos e leitos** para o tratamento da **população adulta (13-59 anos)**.
    * **Triagem e Comunicação:** Priorizar a triagem para os sintomas mais comuns (**Dor de Cabeça, Coriza, Fadiga**).
    * **Foco Geográfico:** Investir em campanhas de saúde pública e planejamento logístico na **área urbana** e nos estados com maior incidência.

2.  **Estratégia de Testagem (Contenção da Transmissão):**
    * **Testagem em Massa:** Devido à alta taxa de **assintomáticos positivos** e sua circulação, o hospital deve apoiar e/ou implementar um programa de **testagem regular e ampla** (não apenas sintomáticos) para monitorar a disseminação.

3.  **Saúde Ocupacional e Setores de Risco:**
    * **Parcerias com Setores de Serviço:** Estabelecer parcerias com empresas de **serviços, comércio e produção** para oferecer **testagem prioritária**, visando proteger os grupos de trabalho com maior exposição.

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python
* **Processamento de Dados:** **PySpark** (para simular o processamento em ambiente de Nuvem/Big Data)
* **Manipulação e Análise:** Pandas, Numpy
* **Visualização de Dados:** Matplotlib, Seaborn

## 🚀 Como Executar o Projeto

1.  **Pré-requisitos:** Certifique-se de ter um ambiente com **Python**, **PySpark** e as bibliotecas **Pandas**, **Numpy**, **Matplotlib** e **Seaborn** instaladas.
2.  **Dados:** Baixe os microdados e a documentação (dicionário) da PNAD-COVID19 (Julho, Setembro e Novembro de 2020) no site do IBGE e organize os arquivos no diretório do projeto.
3.  **Execução:** Execute as células do arquivo `POS-TECHCHALLENGE-3.ipynb` em sequência.
