# Tech Challenge - Fase 3: Análise PNAD-COVID19 para Planejamento Hospitalar

## 🎯 Objetivo do Projeto

Este projeto, desenvolvido como parte do curso de Pós-Graduação em Data Analytics da [Nome da Instituição, se aplicável, ou apenas POS TECH - DATA ANALYTICS], visa analisar o comportamento da população brasileira durante a pandemia da COVID-19. O foco é extrair indicadores cruciais a partir dos microdados da PNAD-COVID19 do IBGE (Julho, Setembro e Novembro de 2020) para auxiliar um grande hospital no planejamento e tomada de decisões estratégicas em um novo surto.

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

## 💡 Análise Breve dos Indicadores

A análise dos dados de Julho, Setembro e Novembro de 2020 revelou padrões importantes:

1.  **Perfil do Caso Positivo:**
    * **Faixa Etária:** A maior concentração de casos positivos está na **faixa Adulto (13-59 anos)**. Em um novo surto, o planejamento deve focar principalmente nos recursos para este grupo, que também é o mais ativo economicamente.
    * **Gênero:** Há uma distribuição relativamente igual, com leve **predomínio feminino** entre os casos positivos.
    * **Localização:** A **área urbana** concentra a grande maioria dos casos positivos, o que direciona o planejamento logístico e de comunicação.

2.  **Sintomas e Assintomáticos (Caracterização Clínica):**
    * O sintoma mais comum é a **Dor de Cabeça**, seguido por **Coriza** (Nariz entupido ou escorrendo) e **Fadiga**. A perda de olfato/paladar, apesar de ser um sintoma chave do COVID-19, foi menos reportada.
    * A proporção de **casos positivos assintomáticos** é significativa (aprox. 30%), reforçando a necessidade de testagem em massa para conter a disseminação.

3.  **Comportamento e Economia:**
    * **Isolamento Social (Com Sintomas):** A maior parte dos casos sintomáticos reportou ter ficado **"Rigorasamente em Isolamento Domiciliar"**, indicando que a população, ao sentir sintomas, tende a seguir a recomendação de isolamento.
    * **Situação de Trabalho (C001):** A maioria dos casos positivos **trabalhou na semana de referência**, mas a proporção de **afastados** por distanciamento social diminuiu de Julho para Novembro (conforme dados do IBGE, embora não tenha sido incluído no gráfico final), o que sugere um aumento na circulação de pessoas.
    * **Tipo de Ocupação (C007C):** Os **Trabalhadores dos serviços, vendedores do comércio e de mercados** e **Trabalhadores da produção de bens e serviços** representam a maioria dos casos entre os trabalhadores, indicando maior exposição em serviços essenciais e comércio.

## 🏥 Ações Estratégicas para o Hospital em um Novo Surto

Com base nesta análise, o hospital deve focar suas ações nas seguintes áreas:

1.  **Foco em Recursos e Logística:**
    * **Triagem e Comunicação:** Priorizar a triagem para os sintomas mais comuns (Dor de Cabeça, Coriza, Fadiga) e investir em campanhas de comunicação de saúde pública na **área urbana**.
    * **Alocação de Leitos:** Direcionar o **maior volume de recursos e leitos** para o tratamento da **população adulta (13-59 anos)**.

2.  **Estratégia de Testagem:**
    * **Testagem em Massa:** Devido à alta taxa de **assintomáticos positivos**, o hospital deve apoiar e/ou implementar um programa de **testagem regular e ampla** (não apenas sintomáticos) para monitorar a disseminação.

3.  **Saúde Ocupacional e Setores de Risco:**
    * **Parcerias com Setores de Serviço:** Estabelecer parcerias com empresas de **serviços, comércio e produção** para oferecer testagem prioritária, campanhas educativas sobre uso de EPI (Equipamento de Proteção Individual) e protocolos de afastamento, visando proteger os grupos de trabalho com maior exposição.

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python
* **Processamento de Dados:** **PySpark** (para simular o processamento em ambiente de Nuvem/Big Data)
* **Manipulação e Análise:** Pandas, Numpy
* **Visualização de Dados:** Matplotlib, Seaborn

## 🚀 Como Executar o Projeto

1.  **Pré-requisitos:** Certifique-se de ter um ambiente com **Python**, **PySpark** e as bibliotecas **Pandas**, **Numpy**, **Matplotlib** e **Seaborn** instaladas.
2.  **Dados:** Baixe os microdados e a documentação (dicionário) da PNAD-COVID19 (Julho, Setembro e Novembro de 2020) no site do IBGE e organize os arquivos no diretório do projeto.
3.  **Execução:** Execute as células do arquivo `POS-TECHCHALLENGE-3.ipynb` em sequência.

---

Espero que esta análise e as sugestões ajudem a finalizar seu Tech Challenge com excelência!