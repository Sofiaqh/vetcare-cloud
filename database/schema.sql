-- Tabla de Usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    password_hash VARCHAR(255) NOT NULL
);

-- Tabla de Mascotas
CREATE TABLE mascotas (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    raza VARCHAR(50),
    fecha_nacimiento DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- Tabla de Citas Médicas
CREATE TABLE citas (
    id SERIAL PRIMARY KEY,
    mascota_id INT NOT NULL,
    fecha_hora TIMESTAMP NOT NULL,
    motivo VARCHAR(255) NOT NULL,
    estado VARCHAR(20) DEFAULT 'PENDIENTE',
    FOREIGN KEY (mascota_id) REFERENCES mascotas(id) ON DELETE CASCADE
);
