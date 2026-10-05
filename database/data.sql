-- Inserción de usuarios de prueba
INSERT INTO usuarios (nombre, email, telefono, password_hash) VALUES
('Carlos Pérez', 'carlos.perez@email.com', '+573001234567', '$2a$10$e8R...hash1'),
('María Rodríguez', 'maria.rodriguez@email.com', '+573109876543', '$2a$10$f9S...hash2');

-- Inserción de mascotas asociadas a usuarios
INSERT INTO mascotas (usuario_id, nombre, especie, raza, fecha_nacimiento) VALUES
(1, 'Lucas', 'Perro', 'Golden Retriever', '2021-05-10'),
(1, 'Felix', 'Gato', 'Mestizo', '2023-02-14'),
(2, 'Kira', 'Perro', 'Husky Siberiano', '2022-08-20');

-- Inserción de citas registradas
INSERT INTO citas (mascota_id, fecha_hora, motivo, estado) VALUES
(1, '2026-11-20 10:00:00', 'Vacunación Anual Antirrábica', 'PENDIENTE'),
(2, '2026-11-22 15:30:00', 'Limpieza Dental y Chequeo General', 'PENDIENTE'),
(3, '2026-11-25 09:15:00', 'Consulta por Alergia en Piel', 'PENDIENTE');

-- Inserción de registro de vacunas
INSERT INTO historial_vacunas (mascota_id, nombre_vacuna, fecha_aplicacion, proxima_dosis) VALUES
(1, 'Quíntuple Canina', '2025-11-20', '2026-11-20'),
(3, 'Triple Felina', '2026-01-15', '2027-01-15');
