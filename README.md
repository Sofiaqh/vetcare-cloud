# vetcare-cloud# 🐾 VetCare Cloud: Sistema Móvil de Gestión Veterinaria e Historial Médico

![Versión](https://img.shields.io/badge/Versi%C3%B3n-1.0.0-blue)
![Licencia](https://img.shields.io/badge/Licencia-MIT-green)
![Estado](https://img.shields.io/badge/Estado-En_Desarrollo-orange)

## 📋 Descripción del Proyecto
**VetCare Cloud** es una solución tecnológica integral diseñada para optimizar el seguimiento médico, esquemas de vacunación y agendamiento de citas de mascotas. Responde a la problemática de la falta de centralización en los registros clínicos de veterinarias y la pérdida de control sobre las fechas críticas de vacunación por parte de los propietarios.

La solución integra un cliente móvil conectado mediante APIs RESTful a un backend en **Java Spring Boot** alojado en la nube y respaldado por una base de datos relacional **PostgreSQL**.

---

## 🏗️ Arquitectura de la Solución en la Nube

```text
[ App Móvil (Flutter / Mobile) ]
              │
              │ (Peticiones HTTPS / REST API JSON)
              ▼
    [ Backend Java Spring Boot ] ───(Desplegado en Render / Cloud Run)
              │
              │ (JDBC / Hibernate ORM)
              ▼
   [ Base de Datos SQL ] ───(Instancia Managed en Render Postgres)
