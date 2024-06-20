/* PROFESORES*/
/*select * from profesores
insert into profesores (nombre, apellido) values 
('javier','combita'),
('lili','carmona'),
('david','londoño'),
('kevin','alvarez'),
('angela','sepulveda');*/

/* MATERIAS*/
/*select * from materias
insert into materias (nombre, profesores_id) values 
('desarrollo', 1),
('habilidades para la vida', 2),
('ingles', 3),
('matematicas', 4),
('artistica', 5);*/

/* SALONES*/
/*select * from salones
insert into salones (numero) values 
('101'),
('201'),
('301'),
('401'),
('501');*/

/* JORNADAS*/
/*select * from jornadas
insert into jornadas (nombre) values 
('diurna'),
('nocturna');*/

/* CURSOS*/
/*select * from cursos
insert into cursos (nombre,director_del_curso_id) values 
('11a',1),
('11b',2),
('10a',3),
('10b',4),
('10c',5);*/

/* ESTUDIANTES*/
/*select * from estudiantes
insert into estudiantes (nombre, apellido,curso_id) values 
('juan guillermo','ruiz',5),
('valeria','muñeton',4),
('juan david','londoño',3),
('eduardo','londoño',2),
('marlen','valle',1);*/

/* HORARIOS*/
/*select * from horarios
insert into horarios (salones_id,jornadas_id,materias_id,bloque,curso_id) values 
(5,1,1,'de 6am a 12pm',5),
(4,2,2,'de 7am a 1pm',4),
(3,1,3,'de 10am a 4pm',3),
(2,2,4,'de 2pm a 8pm',2),
(1,1,5,'de 4pm a 10pm',1);*/

/* PERSONAL DE ASEO*/
/*select * from personal_de_aseo
insert into personal_de_aseo (nombre,apellido,horario_id) values 
('alba','jaramillo',5),
('miguel angel','sosa',4),
('manuel','rodriguez',3),
('juan fernando','quintero',2),
('gustavo','cuellar',1);*/

/* TUTORES*/
/*select * from asistentes_tutores
insert into asistentes_tutores (nombre,docente_encargado_id,materia_id,aprendices_acargo_id) values 
('julio jaramillo',1,5,1),
('octavio mesa',2,4,2),
('rodolfo aicardi',3,3,3),
('dario gomez',4,2,4),
('vicente fernandez',5,1,5);*/

/* DIRECTIVOS*/
/*select * from directivos
insert into directivos (consejo_academico_id,consejo_estudiantil_id,rector) values
(1,5,'jose hugo castaño');*/


/* ------------- CONSULTAS ----------*/

/* Consulta 1 */
/*select estudiantes.nombre, estudiantes.apellido, cursos.nombre_curso from estudiantes
inner join cursos on estudiantes.curso_id=cursos.id
*/

/* Consulta 2 */
/*select estudiantes.nombre, estudiantes.apellido, materias.nombre from materias 
inner join horarios on materias.id=horarios.id
inner join cursos on horarios.id=cursos.id
inner join estudiantes on cursos.id=estudiantes.id;
*/

/* Consulta 3 */
/*select estudiantes.nombre, estudiantes.apellido, profesores.nombre, profesores.apellido from profesores
inner join materias on profesores.id=materias.id
inner join horarios on materias.id=horarios.id
inner join cursos on horarios.id=cursos.id
inner join estudiantes on cursos.id=estudiantes.id;
*/

/* Consulta 4 */
/*select * from estudiantes order by id desc
*/
