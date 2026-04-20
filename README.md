Catálogo Web con Servlets (Jakarta EE)
Descripción

Este proyecto corresponde al desarrollo de una aplicación web basada en **Jakarta EE (Servlets + JSP)** que implementa un sistema de catálogo de productos con funcionalidades de filtrado, búsqueda y gestión de carrito de compras. La solución sigue una arquitectura MVC simplificada, donde los **Servlets actúan como controladores**, las clases del paquete `model` representan el dominio y las vistas son implementadas mediante **JSP**.

El sistema permite visualizar un catálogo de productos precargados, filtrar por categoría, realizar búsquedas por nombre y agregar productos a un carrito persistido en sesión HTTP, cumpliendo con los principios de separación de responsabilidades establecidos en la especificación **Jakarta Servlet API 6.0**.

---

Estructura del Proyecto

La organización del proyecto sigue el estándar de Maven para aplicaciones web (`WAR`):

```
catalogo-web/
│
├── pom.xml
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/ejemplo/
│       │       ├── model/
│       │       │   ├── Producto.java
│       │       │   └── CarritoItem.java
│       │       │
│       │       └── servlet/
│       │           ├── CatalogoServlet.java
│       │           └── CarritoServlet.java
│       │
│       └── webapp/
│           ├── index.jsp
│           ├── css/
│           │   └── estilos.css
│           └── WEB-INF/
│               ├── web.xml
│               └── views/
│                   ├── catalogo.jsp
│                   ├── carrito.jsp
│                   └── confirmacion.jsp
```

---

 Tecnologías Utilizadas

* Java 17+
* Jakarta Servlet API 6.0
* JSP (Java Server Pages)
* JSTL 3.0
* Apache Maven
* Apache Tomcat 10/11

---

## 🚀 Ejecución del Proyecto

### 1. Compilación

Desde la raíz del proyecto:

```bash
mvn clean package
```

Esto generará el archivo:

```
target/catalogo-web-1.0-SNAPSHOT.war
```

---

### 2. Despliegue en Tomcat

1. Copiar el archivo `.war` generado en:

```
apache-tomcat/webapps/
```

2. Iniciar el servidor:

```
apache-tomcat/bin/startup.bat
```

3. Acceder desde el navegador:

```
http://localhost:8080/catalogo-web-1.0-SNAPSHOT/catalogo
```

---

 Funcionalidades Implementadas

El sistema cumple con los siguientes requisitos funcionales:

* Visualización de catálogo de productos
* Búsqueda por nombre de producto
* Filtrado por categoría
* Gestión de carrito de compras mediante sesión (`HttpSession`)
* Incremento de cantidad de productos en carrito
* Vista de confirmación de compra

---
 Aspectos Técnicos Relevantes

El catálogo se carga en memoria durante la inicialización del `CatalogoServlet` mediante el método `init()`, y se comparte a través del `ServletContext`, permitiendo acceso global dentro de la aplicación. El carrito de compras se gestiona como una estructura `Map<Integer, CarritoItem>` almacenada en la sesión del usuario, lo cual cumple con el modelo de estado conversacional definido en la especificación de servlets.

El uso de `Stream API` en Java permite implementar filtros dinámicos sobre el catálogo, optimizando la legibilidad y mantenibilidad del código conforme a buenas prácticas modernas de desarrollo.

---
Evidencias (Capturas)

<img width="1491" height="1000" alt="image" src="https://github.com/user-attachments/assets/9b71140e-e99f-4b90-ab2e-e88a6107fbfa" />


Se recomienda incluir capturas de:

* Catálogo cargado
* Búsqueda por nombre
* Filtro por categoría
* Agregar producto al carrito
* Vista del carrito

---

Notas Finales

Este proyecto implementa una solución básica de comercio electrónico sin persistencia en base de datos, enfocándose en el manejo de estado en memoria y en sesión, lo cual es consistente con escenarios académicos de introducción a tecnologías web basadas en Java.


