alter view v_usuario as
	select id_usuario, Run as 'RUN', u.Primer_Nombre, u.Segundo_Nombre, u.Apellido_paterno, u.Apellido_materno,
	u.Primer_Nombre +' '+ u.Segundo_Nombre +' '+ u.Apellido_paterno +' '+ u.Apellido_materno as 'Nombre Completo',
	u.Correo as 'Correo', u.Password as 'Contraseña', u.Direccion as 'Dirección', CONVERT(varchar(11),u.Fecha_Nacimiento,106) as 'Nacimiento',
	g.id_genero, g.Descripcion as 'Genero', t.id_tipo, t.descripcion_tipo as 'Tipo', e.id_estado, e.descripcion_estado as 'Estado', f.id_fotoPerfil 
	from Usuarios u
	inner join Genero g on u.id_genero = g.id_genero
	inner join Tipo t on u.id_Tipo = t.id_tipo
	inner join Estado e on u.id_Estado = e.id_estado
	inner join Foto_Perfil f on u.id_fotoPerfil = f.id_fotoPerfil


create procedure buscaCursoApoderado (@id int)
	as
	begin
	SELECT id_curso FROM Alumnos al inner join Apoderados a on a.id_Alumno =  al.id_Alumno where id_Apoderado = @id
	end


create procedure bApoderado (@id int)
	as
	begin
	SELECT id_Apoderado, u.Correo
	FROM Apoderados a
	inner join Alumnos al on a.id_Alumno = al.id_Alumno
	inner join Cursos c on c.id_curso = al.id_curso
	inner join Usuarios u on u.id_usuario = a.id_usuario
	WHERE al.id_Alumno = 1 
	end

create proc bProfe (@run int)
	as
	begin
	SELECT p.id_Profesor 
	FROM Profesores p
	inner join Usuarios u on u.id_usuario = p.id_usuario
	WHERE u.Run = @run
	end

create proc EstComunicados
	as
	begin
	SELECT COUNT(id_Comunicado) as 'Comunicados'
	FROM Comunicado 
	SELECT COUNT(id_Comentario) as 'Comentarios'
	FROM Comentario_Comunicados 
	end

create proc IniciarUsuario(@Run int)
	as
	begin
	select u.Primer_Nombre+' '+ u.Apellido_paterno, u.Correo, fp.Nombre
	from Usuarios u
	inner join Foto_Perfil fp  on fp.id_fotoPerfil = u.id_fotoPerfil
	where Run = @Run
	end