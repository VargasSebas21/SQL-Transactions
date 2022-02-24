use facturacion
begin tran t1
update productos set productos.stock = productos.stock * 2 
from productos
join detalles on detalles.id_producto = productos.id_producto
join facturas on facturas.num_factura = detalles.id_factura
join modo_pagos on modo_pagos.num_pago = facturas.num_pago
where productos.nombre like 'C%' and modo_pagos.nombre = 'tarjeta débito'
commit tran t1


