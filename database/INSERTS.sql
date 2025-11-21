INSERT INTO proveedores (nombre, correo, telefono, direccion) VALUES
('TecnoSuministros S.A.', 'contacto@tecnosuministros.com', '3102345678', 'Cra 45 # 23-11, Bogotá'),
('ElectroPartes Ltda.', 'ventas@electropartes.com', '3159876543', 'Calle 80 # 12-45, Medellín'),
('Soluciones Industriales SAS', 'info@solind.com', '3205678910', 'Av. Simón Bolívar #45-21, Cali'),
('Distribuidora Andina', 'pedidos@andina.com', '3182233445', 'Carrera 10 # 34-22, Bucaramanga');

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Ventilador 12V', 'Ventilador industrial de 12 voltios para sistemas de enfriamiento', 120000, 35),
('Sensor DHT22', 'Sensor digital de temperatura y humedad', 35000, 120),
('Fuente 12V 5A', 'Fuente de alimentación con salida estable de 12V y 5A', 85000, 50),
('Relay 5V', 'Módulo relay de 1 canal, controlado por microcontrolador', 15000, 100),
('Cables Dupont', 'Pack de cables macho-hembra para prototipado electrónico', 10000, 200);

INSERT INTO ordenes (id_proveedor, fecha, total, estado) VALUES
(1, '2025-10-15 10:30:00', 305000, 'Enviada'),
(2, '2025-10-15 15:10:00', 70000, 'Pendiente'),
(3, '2025-10-16 09:00:00', 240000, 'Recibida');

INSERT INTO detalle_orden (id_orden, id_producto, cantidad, precio, subtotal) VALUES
(1, 1, 2, 120000, 240000),
(1, 5, 5, 13000, 65000),
(2, 2, 2, 35000, 70000),
(3, 3, 2, 85000, 170000),
(3, 4, 2, 35000, 70000);

INSERT INTO proveedores (nombre, correo, telefono, direccion)
VALUES ('Proveedor Ejemplo', 'proveedor@correo.com', '123456789', 'Calle 123');



