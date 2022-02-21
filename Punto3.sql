DELETE FROM dbo.clientes 
WHERE  id_cliente not IN 
       (
       SELECT  id_cliente 
       FROM    dbo.facturas 
       WHERE   id_cliente is not null
       )