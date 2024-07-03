
drop schema if exists practica; 
CREATE SCHEMA practica;

/* Creacion del usuario admin */ 
create user 'usuario_practica'@'%' identified by 'la_Clave'; 
grant all privileges on practica.* to 'usuario_practica'; 
/*Recarga de tablas de privilegios*/
flush privileges;

create table practica.arbol (
  id_arbol INT NOT NULL AUTO_INCREMENT,
  nombre_comun VARCHAR(50),
  nombre_cientifico VARCHAR(50),
  ruta_imagen VARCHAR(1024),
  tipo_flor VARCHAR(50),
  dureza_madera INT 
  comment 'Valor numérico que indica la dureza de la madera del árbol, en una escala de 0 a 10,000',
  altura_promedio FLOAT
  comment 'Altura promedio en metros (m)',
  PRIMARY KEY (id_arbol)
  );
  
  DROP TABLE practica.arbol;
  
  INSERT INTO practica.arbol (nombre_comun, nombre_cientifico, ruta_imagen, tipo_flor, dureza_madera, altura_promedio) VALUES
('Roble', 'Quercus robur', 'https://media.istockphoto.com/id/183262773/es/foto/oak-tree-en-el-verano-gran-angular-vista-panor%C3%A1mica.jpg?s=612x612&w=0&k=20&c=2c8LHiOSt6pEHM6VDyCFfUsNr_C8PmzKNm5opdyGvYs=', 'Flores de roble', 8500, 20.50),
('Pino', 'Pinus sylvestris', 'https://media.istockphoto.com/id/1417433518/es/foto/bosque-de-pinos-en-una-colina-fondo-de-escritorio.jpg?s=612x612&w=0&k=20&c=86kQIaTOFxge4kQBgi4l0kYvfohEd9gn37c0XijwsyI=', 'Conos de pino', 9000, 25.30),
('Abeto', 'Abies alba', 'https://media.istockphoto.com/id/185226676/es/foto/pinabeto-del-bosque.jpg?s=612x612&w=0&k=20&c=8BqFB-ZJXbL0EdmKo-GkXN5lkTsjUchNjKVo_zN1DAA=', 'Conos de abeto', 7500, 30.00),
('Cedro', 'Cedrus libani', 'https://media.istockphoto.com/id/93148386/es/foto/cedar-de-la-rep%C3%BAblica-del-l%C3%ADbano.jpg?s=612x612&w=0&k=20&c=iaNggIk-wh1vq0L2j7lq9QP-DIjuvdhF5sRfFPHxMgQ=', 'Conos de cedro', 9200, 22.75),
('Arce', 'Acer pseudoplatanus', 'https://media.istockphoto.com/id/1494500090/es/v%C3%ADdeo/sic%C3%B3moro-centenario.jpg?s=640x640&k=20&c=gmAS0U-yX0XUudPlnkjrkRA4unmQ8rnCnpfMkBxI-z8=', 'Flores de arce', 8800, 18.40),
('Olmo', 'Ulmus minor', 'https://media.istockphoto.com/id/1222546677/es/foto/semillas-verdes-de-ulmus-minor-o-elm-trees-y-luz-borrosa-en-el-fondo.jpg?s=612x612&w=0&k=20&c=IBB1FRMxQZ7Lu-uUyTmLsJJ6apBZvlVatyCPmW37OiQ=', 'Flores de olmo', 7000, 15.20),
('Cerezo', 'Prunus avium', 'https://media.istockphoto.com/id/472014555/es/foto/maduro-cerezas-en-un-%C3%A1rbol.jpg?s=612x612&w=0&k=20&c=O9Y0kiemDjArCsulVHjE3IlMeqlDNKSSRmtcX9NIdLg=', 'Flores de cerezo', 7800, 12.90),
('Sauce', 'Salix alba', 'https://media.istockphoto.com/id/1471676941/es/foto/sauce-llor%C3%B3n-con-largas-ramas-verdes-sobre-el-agua-tranquila-del-r%C3%ADo.jpg?s=612x612&w=0&k=20&c=cmUnKC25BJneaI7dF_qQZkLJMjvyG8IQzcOdikUI8sY=', 'Amentos de sauce', 6500, 10.60);

SELECT * FROM practica.arbol;


  
  