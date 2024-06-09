CREATE VIEW VendasPorCategoria AS
SELECT 
    Livro_TIPO AS Categoria,
    SUM(qtd_venda) AS TotalVendas
FROM 
    Livro
GROUP BY 
    Livro_TIPO;

CREATE VIEW LivrosMaisVendidos AS
SELECT 
    ISBN,
    titulo_livro,
    autor,
    ano_lancamento,
    qtd_venda,
    valor_livro,
    (qtd_venda * valor_livro) AS TotalVendas
FROM 
    Livro
WHERE 
    qtd_venda > 100
ORDER BY 
    TotalVendas DESC;
