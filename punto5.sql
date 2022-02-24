use facturacion;
select clientes.nombre, sum(detalles.cantidad) [cantidad total] from clientes
join facturas on facturas.id_cliente = clientes.id_cliente
join modo_pagos on modo_pagos.num_pago = facturas.num_pago
join detalles on detalles.id_factura = facturas.num_factura
join productos on productos.id_producto = detalles.id_producto
join categorias on categorias.id_categoria = productos.id_categoria
where modo_pagos.nombre = 'efectivo' and categorias.nombre = 'Mercado'
group by clientes.nombre