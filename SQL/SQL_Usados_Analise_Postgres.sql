 -- 1 - Top 10 Estados com mais "Casos Positivos"

SELECT
    t2.DESCR_TIPO AS Estado,
    COUNT(*) AS casos
FROM
    df_dados_pess t1
JOIN
    dic_pess_uf_df t2 ON t1.PESS_UF = CAST(t2.COD_TIPO AS INTEGER)
WHERE
    t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    Estado
ORDER BY
    casos DESC
LIMIT 10;




-- 2 - Proporção de "Casos Positivos" por Situação do Domicílio

SELECT
    t2.PESS_SIT_DOMICILIO_DESC AS Area,
    COUNT(t1.CTRL_ID) AS casos,
    -- Calcula a proporção (porcentagem)
    CAST(COUNT(t1.CTRL_ID) * 100.0 / SUM(COUNT(t1.CTRL_ID)) OVER () AS NUMERIC(10, 2)) AS Proporcao
FROM
    df_dados_pess t1
JOIN
    dic_pess_sit_domicilio_df t2 ON t1.PESS_SIT_DOMICILIO = CAST(t2.PESS_SIT_DOMICILIO AS INTEGER)
WHERE
    t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    Area
ORDER BY
    casos DESC;




-- 3 - "Casos Positivos" por Faixa Etária

SELECT
    CASE
        WHEN t1.PESS_IDADE_MORADOR <= 12 THEN 'Criança (0-12)'
        WHEN t1.PESS_IDADE_MORADOR > 12 AND t1.PESS_IDADE_MORADOR < 60 THEN 'Adulto (13-59)'
        ELSE 'Idoso (60+)'
    END AS faixa_etaria,
    COUNT(t1.CTRL_ID) AS casos
FROM
    df_dados_pess t1
WHERE
    t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    faixa_etaria




-- 4 - "Casos Positivos": Homens vs Mulheres

SELECT
    t2.PESS_SEXO_MORADOR_DESC AS Sexo,
    COUNT(t1.CTRL_ID) AS casos
FROM
    df_dados_pess t1
JOIN
    dic_pess_sexo_morador t2 ON t1.PESS_SEXO_MORADOR = CAST(t2.PESS_SEXO_MORADOR AS INTEGER)
WHERE
    t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    Sexo
ORDER BY
    casos DESC;



-- 5 - Situação Escolar entre "Casos Positivos"

SELECT
    t2.ESTUDA_DESC AS Situacao_Escolar,
    COUNT(t1.CTRL_ID) AS casos
FROM
    df_dados_pess t1
JOIN
    dic_estuda_df t2 ON t1.PESS_ESTUDA = CAST(t2.ESTUDA_COD AS INTEGER)
WHERE
    t1.PESS_ESTUDA IS NOT NULL
    AND t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    Situacao_Escolar
ORDER BY
    casos DESC;

-- 7 - Top 5 Sintomas em Casos "Positivos"

WITH sintomas_positivos AS (
    SELECT
        t2.SINT_FEBRE, t2.SINT_TOSSE, t2.SINT_DOR_CABECA, t2.SINT_DIF_RESPIRAR, 
        t2.SINT_CORIZA, t2.SINT_FADIGA, t2.SINT_PERDA_OLFATO
    FROM
        df_dados_pess t1
    JOIN
        df_dados_sint t2 ON t1.CTRL_ID = t2.CTRL_ID
    WHERE
        t1.CTRL_ID IN (
            SELECT CTRL_ID 
            FROM df_dados_trab 
            WHERE TRAB_SP_TRABALHOU = 1
        )
),
contagem_sintomas AS (
    -- Desempilha os sintomas, contando '1' (Sim)
    SELECT 'Febre' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_FEBRE = 1
    UNION ALL
    SELECT 'Tosse' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_TOSSE = 1
    UNION ALL
    SELECT 'Dor de Cabeça' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_DOR_CABECA = 1
    UNION ALL
    SELECT 'Dificuldade de Respirar' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_DIF_RESPIRAR = 1
    UNION ALL
    SELECT 'Coriza' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_CORIZA = 1
    UNION ALL
    SELECT 'Fadiga' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_FADIGA = 1
    UNION ALL
    SELECT 'Perda de Olfato/Paladar' AS Sintoma, COUNT(*) AS Total FROM sintomas_positivos WHERE SINT_PERDA_OLFATO = 1
)
SELECT
    Sintoma,
    Total
FROM
    contagem_sintomas
ORDER BY
    Total DESC
LIMIT 5;


-- 8 - Proporção: Assintomáticos vs Sintomáticos "Positivos"

SELECT
    CASE
        WHEN 
            (SINT_FEBRE = 1 OR SINT_TOSSE = 1 OR SINT_DOR_CABECA = 1 OR SINT_DIF_RESPIRAR = 1 OR SINT_CORIZA = 1 OR SINT_FADIGA = 1 OR SINT_PERDA_OLFATO = 1) 
        THEN 'Com sintomas'
        ELSE 'Assintomáticos'
    END AS situacao_sintomas,
    COUNT(t1.CTRL_ID) AS casos
FROM
    df_dados_pess t1
JOIN
    df_dados_sint t2 ON t1.CTRL_ID = t2.CTRL_ID
WHERE
    t1.CTRL_ID IN (
        SELECT CTRL_ID 
        FROM df_dados_trab 
        WHERE TRAB_SP_TRABALHOU = 1
    )
GROUP BY
    situacao_sintomas;


--9 - Isolamento Social em "Casos Positivos" (Sintomáticos e Assintomáticos)

WITH casos_sintomas_isolamento AS (
    SELECT
        t3.DISTANC_SOCIAL,
        CASE
            WHEN 
                (SINT_FEBRE = 1 OR SINT_TOSSE = 1 OR SINT_DOR_CABECA = 1 OR SINT_DIF_RESPIRAR = 1 OR SINT_CORIZA = 1 OR SINT_FADIGA = 1 OR SINT_PERDA_OLFATO = 1) 
            THEN 'Sintomáticos'
            ELSE 'Assintomáticos'
        END AS situacao_sintomas
    FROM
        df_dados_pess t1
    JOIN
        df_dados_sint t2 ON t1.CTRL_ID = t2.CTRL_ID
    JOIN
        df_dados_iso_social t3 ON t1.CTRL_ID = t3.CTRL_ID
    WHERE
        t1.CTRL_ID IN (
            SELECT CTRL_ID 
            FROM df_dados_trab 
            WHERE TRAB_SP_TRABALHOU = 1
        )
)
SELECT
    t1.situacao_sintomas AS Categoria,
    t2.ISO_DESC AS Distanciamento,
    COUNT(*) AS casos
FROM
    casos_sintomas_isolamento t1
JOIN
    dic_isolamento_social_df t2 ON t1.DISTANC_SOCIAL = CAST(t2.ISO_COD AS INTEGER)
GROUP BY
    Categoria, Distanciamento
ORDER BY
    Categoria, casos DESC;

-- 11 - Distribuição de Resultados por Tipo de Teste

WITH resultados_unificados AS (
    -- Desempilha os resultados de todos os testes (SWAB, DEDO, VEIA)
    SELECT TESTE_SWAB AS Resultado_Teste_Cod, 'SWAB/PCR' AS Tipo_Teste FROM df_dados_dados_tst_covd WHERE TESTE_SWAB IN (1, 2, 3)
    UNION ALL
    SELECT TESTE_SANGUE_DEDO AS Resultado_Teste_Cod, 'Teste Rápido Dedo' AS Tipo_Teste FROM df_dados_dados_tst_covd WHERE TESTE_SANGUE_DEDO IN (1, 2, 3)
    UNION ALL
    SELECT TESTE_SANGUE_VEIA AS Resultado_Teste_Cod, 'Teste Rápido Veia' AS Tipo_Teste FROM df_dados_dados_tst_covd WHERE TESTE_SANGUE_VEIA IN (1, 2, 3)
)
SELECT
    t1.Tipo_Teste,
    t2.TESTE_DESC AS Resultado_Desc,
    COUNT(*) AS Total
FROM
    resultados_unificados t1
JOIN
    dic_resultado_teste_df t2 ON t1.Resultado_Teste_Cod = CAST(t2.TESTE_COD AS INTEGER)
GROUP BY
    t1.Tipo_Teste, Resultado_Desc
ORDER BY
    t1.Tipo_Teste, Total DESC;