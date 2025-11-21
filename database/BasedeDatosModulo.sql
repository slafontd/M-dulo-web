CREATE DATABASE moduloweb;
USE moduloweb;

CREATE TABLE proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(150)
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(200),
    precio DECIMAL(10,2),
    stock INT
);

CREATE TABLE ordenes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    estado VARCHAR(20) DEFAULT 'Pendiente',
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id)
);

CREATE TABLE detalle_orden (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_orden INT,
    id_producto INT,
    cantidad INT,
    precio DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_orden) REFERENCES ordenes(id),
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);


SELECT correo FROM proveedores WHERE id=1;
UPDATE proveedores 
SET correo = 'lafontdiazsantiago@gmail.com'
WHERE id = 1;

RENAME TABLE ordenes TO ordenes_compra;
ALTER TABLE detalle_orden DROP FOREIGN KEY detalle_orden_ibfk_1;

ALTER TABLE detalle_orden
ADD CONSTRAINT detalle_orden_ibfk_1
FOREIGN KEY (id_orden)
REFERENCES ordenes_compra(id_orden)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE ordenes_compra 
MODIFY COLUMN id_orden INT NOT NULL AUTO_INCREMENT;

ALTER TABLE detalle_orden
DROP FOREIGN KEY detalle_orden_ibfk_1;

DESCRIBE ordenes_compra;
DESCRIBE detalle_orden;

ALTER TABLE productos ADD COLUMN id_proveedor INT NOT NULL;



