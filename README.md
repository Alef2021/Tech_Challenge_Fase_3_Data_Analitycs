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
    * **Tipo de Ocupação (C007C):** Os **Trabalhadores dos serviços, vendedores do comércio e de mercados** e **Trabalhadores da produção de bens e serviços** representam a maioria dos casos entre os trabalhadores, indicando maior exposição