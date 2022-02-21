select * from dbo.productos where id_categoria <> (select id_categoria from dbo.categorias where nombre = 'Ferreteria')
update productos set precio = precio * 0.15 + precio where id_categoria <> (select id_categoria from dbo.categorias where nombre = 'Ferreteria')
