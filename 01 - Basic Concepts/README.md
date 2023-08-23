> Universidad de Guadalajara

> Centro Universitario de Ciencias Exactas e Ingenierías

> Felipe Alejandro Jimenez Castillo

# Conceptos Básicos
## Introducción
La computación tolerante a fallas aporta, en los sistemas computacionales, una mayor fiabilidad, esto mediante el manejo de fallas en ambientes computacionales complejos. Además, la creciente dependencia de la sociedad de sistemas informáticos bien diseñados y que funcionen bien ha llevado a una creciente demanda de sistemas fiables, sistemas con propiedades cuantificables de fiabilidad.

## Desarrollo
1. ¿Qué son los sistemas tolerantes a fallos?
    - Un sistema tolerante a fallas es aquel que hace uso de componentes, que automáticamente, toman lugar y acciones cuando otros componentes fallan, asegurándose de no tener perdidas de servicios. Un sistema tolerante a fallas incluye aquellos que aseguran _Hardware_, _Software_ y _Power Sources_.
2. ¿Qué es un fallo (_fault_)?
    - Un fallo es aquel defecto en programas o procesos que producen resultados inesperados o incorrectos. Los fallos pueden ocurrir en diferentes etapas del software (_diseño, desarrollo y despliegue_) y pueden ser de diferentes tipos (_código, diseño, requerimientos o etc._), por lo que es vital el proceso de identificación y resolución de los mismos, pero también el pre-análisis para prevención y detección que puede ahorrar tiempo y recursos. 
3. ¿Qué es un error (_error_)?
    - Un error es el comportamiento incorrecto de un sistema, el cual se causó por una falla. Los errores se pueden clasificar en dos tipos, errores de valor o tiempo, así mismo estos se pueden representar con una variedad de situaciones, como errores de condición de carrera, ciclos infinitos, errores de protocolo, inconsistencia de datos, etc.; Todos estos errores pueden causar el fracaso del sistema si estos se desvían de las especificaciones del mismo. Los errores son importantes cuando se habla acerca de la tolerancia a fallas, debido a que los errores pueden ser detectados antes de que se cause un fracaso en el sistema.
4. ¿Qué es un fracaso o avería (_failure_)?
    - El fracaso se refiere al comportamiento del sistema que no se ajusta a la especificación de él mismo y es causado por fallas y errores. Los fracasos normalmente son detectados por los usuarios u observadores, ya que están previstos en el funcionamiento.
5. ¿Qué es la latencia de un fallo?
    - Tiempo que transcurre desde que se produce un fallo hasta que se manifiesta el error.
6. ¿Qué es la latencia de un error?
    - Tiempo transcurrido entre la aparición de un error y la manifestación de un error en el exterior del sistema.

## Conclusión
Es interesante denotar la diferencia que existe entre las "\textit{etapas}"  del proceso de fallo, o manifestación de un comportamiento no esperado, ya que esto nos deja suponer las fases internas que pueden ser generadas, o bien realizadas, para hacer más robusto nuestro sistema, de manera que tenga más sentido la "Tolerancia a fallas". Además, es importante denotar la cadena de sucesos, desde que ocurre una falla, está genera un error y finalmente una avería o fracaso del sistema, para poder entender y ser más consciente del proceso que debemos realizar o idealizar al tratar de solucionar y resolver fallas. 

## Bilbiografía

- Gärtner, F. C. (1999). Fundamentals of fault-tolerant distributed computing in asynchronous environments. ACM Computing Surveys (CSUR), 31(1), 1-26.
- Fault tolerance. (n.d.). Learning Center; Imperva Inc. Retrieved August 15, 2023, from https://www.imperva.com/learn/availability/fault-tolerance/
- Follow, I. (2020, November 1). Introduction to faults in software engineering. GeeksforGeeks. https://www.geeksforgeeks.org/introduction-to-faults-in-software-engineering/
- Koren, I., \& Mani Krishna, C. (2020). Fault-tolerant systems (2nd ed.). Morgan Kaufmann.
- Hanmer, R. (2007). Patterns for Fault Tolerant Software. John Wiley \& Sons.
- (N.d.). Uva.Es. Retrieved August 16, 2023, from https://www.infor.uva.es /~bastida/ Arquitecturas\% 20Avanzadas/ Tolerant.pdf