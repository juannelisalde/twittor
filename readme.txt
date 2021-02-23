-- comandos utiles de git -- 
  page : https://www.genbeta.com/desarrollo/manejo-de-ramas-de-desarrollo-con-git
  page : https://rogerdudler.github.io/git-guide/index.es.html

  git branch newBranch
  git checkout newBranch
  git checkout -b newBranch

  git branch / verifica rama que se esta usando
  git diff --stat master newBranch / versus entre las dos ramas

  git checkout master
  git merge newBranch / se realiza merge

  git reset --hard HEAD / elimina ultimo merge

  git reset --head ORIG_HEAD / desahace commit

  git branch -d newBranch / elimina rama

  git remote rm origin
  git remote add origin https://juannelisalde:Juancho.123@github.com/juannelisalde/girosRefactor.git
  git remote add origin https://juannelisalde:Juancho.123@github.com/juannelisalde/yourStore.git
  git remote add origin https://edegel:eGlobal2019@github.com/jcatencia/Emgesa.git
  git remote add origin https://CO1030576957@bitbucket.springlab.enel.com/scm/stga/indisponibilidades.git
  git remote add origin https://CO1030576957:Indra20204@bitbucket.springlab.enel.com/scm/spg/solpagos.git
  git remote add origin https://CO1030576957:Indra20204@bitbucket.springlab.enel.com/scm/cot/cotizador.git
  git push -u origin master
  
  git fetch

-- tarea programada windows php -- 
  abrir tareas programadas de windows
  crear tarea
  general
    nombre 
    descripcion
    checkear ejecutar con usuario logueado o nombre
    checkear no pedir pasword
    checkear ejecutar con todos lo privilegios
  trigger
    new
    se ejecuta segun horas necesarias
  actions
    program script: ruta absoluta .bat, c:/xampp/htdocs/servicios/sevicio.bat
    start in: ruta carpeta que contine .bat, c:/xampp/htdocs/servicios

-- servidores HECTOR --
  -- tortoise SVN --
    HOST  : svn://elaaeisd0f00.enelint.global/TGC/LATAM/PERU/FUENTES/Pre_Produccion/BDComercial/bin/C20APGMELF00/BDComercialEdicion Site
    HOST : svn://elaaeisd0f00.enelint.global/TGC/LATAM/PERU/FUENTES/LineaBase/BDComercial/bin/E20APGMELF00/BDComercialEdicion Site
    USER : CO1013599645
    PASS : aleguizamon

  -- servidor desarrollo windows --
    URL  : c20apgmelf00.enelint.global:8080
    HOST : 10.152.28.231
    USER : ENELINT\A-AE46562
    PASS : AAEIndra2021*

  -- servidor desarrollo oracle -- 
    HOST : 10.152.30.93
    USER : COES_DATOS
    PASS : cambiami123$
    SID  : SMRDPRE
    PORT : 1521

  -- servidor produccion windows --
    URL  : e20apgmelf00.enelint.global:8080
    HOST : 10.152.168.254
    USER : ENELINT\A-AE46562
    PASS : AAEIndra2021*
    USERAPP : heyward
    USERAPP : 123123123

  -- servidor produccion oracle --
    HOST : 10.152.170.107
    USER : coes_datos
    PASS : c03sd4t0s
    PORT : 1521
    SID  : SMRD

-- servidor desarrollo windows EMGESA / webservice -- 
  HOST : 10.152.25.89
  USER : ENELINT\A-AE46562
  PASS : AAEIndra2021*

-- servidor desarrollo oracle SIMMER_MOD_ADMINIS --
  HOST : 10.152.26.12
  USER : SIMMER_MOD_ADMINIS
  PASS : Galileo2016!
  PORT : 1521
  SID  : SMRD

-- servidor desarrollo oracle GNUBILA --
  HOST : 10.152.26.12
  USER : GNUBILA
  PASS : $GNUBILA2016
  PORT : 1521
  SID  : SMRD

-- servidor produccion windows EMGESA / webservice -- 
  HOSTNAME : E20ACGGESA00:8080
  HOST : 10.152.165.45
  USER : ENELINT\A-AE46562
  PASS : AAEIndra2021*

-- servidor produccion oracle SIMMER_MOD_ADMINIS --
  HOST : 10.152.166.25
  USER : SIMMER_MOD_ADMINIS
  PASS : Galileo2016!
  PORT : 1521
  SID  : GDMDBPRO

-- servidor produccion oracle GNUBILA --
  HOST : 10.152.166.25
  USER : GNUBILA
  PASS : $GNUBILA2016
  PORT : 1521
  SID  : GDMDBPRO

-- servidores GREPORTING -- 
  -- servidor desarrollo linux --
    HOST : 10.152.24.33
    USER : AE46562
    AEIndra2021&

  -- servidor desarrollo postgresql CAPAS GEOGRAFICAS -- 
    HOST : 10.154.213.28
    DDBB : rephidrgr
    USER : hidrgeo
    PASS : ycxrt.34
    PORT : 5432

  -- aplicacion desarrollo -- 
    HOST : http://10.152.24.33/greporting/index.html
    USER : emgesa
    PASS : Admin*2020

  -- servidor produccion linux -- 
    HOST : 10.152.164.150
    USER : AE46562
    AEIndra2021&

  -- servidor desarrollo postgresql CAPAS GEOGRAFICAS --
    HOST : 10.154.82.54
    BD   : rephidrgr
    USER : rhidrgeo
    PASS : MpB24_ORe
    PORT : 5432

  -- aplicacion produccion -- 
    HOST : http://greporting.enel.com/greporting/index.html
    USER : emgesa
    PASS : Admin*2020

  -- aplicacion desarrollo EGMA --
    HOST: 10.154.80.7/greportegma
    USER: pruebas
    PASS: Pruebas#987

-- credenciales github indra -- 
  USER : jdnaranjo@indracompany.com
  PASS : eGlobal2019

-- credenciales swagger indra -- 
  HOST : https://swagger.io/
  SELE : SWAHHERHUB
  USER : jdnaranjo@indracompany.com
  PASS : eGlobal2019

-- credenciales tudineroavenezuela -- 
  -- tudinerodev goddady --
    host : https://tudinerodev.com:2083/
    user : calidad2020
    pass : Jajs080910#

  -- tudineroapp goddady --
    host : https://tudinero.app:2083/
    user : tudineroapp
    pass : Jajs080910#

  -- winscp --
    host : tudinerodev.com
    user : calidad2020
    pass : Jajs080910#
    port : 21

  -- gmail -- 
    user : tudineroavenezuela@gmail.com
    pass : Cafres2015

  -- user app -- 
    user : proyectos@ipvox.com.co
    pass : Jajs080910
    user : demo@demo.com
    pass : 1234
    user : ipvoxsas@gmail.com
    pass : Cafres2019

-- endesa VPN -- 
  -- cisco --
    HOST : https://vpnssl.endesa.es/eiproveedores
    USER : CO1030576957
    PASS : 1ndR2@#20201
    URL CHANGE PASS  : https://mail.enel.com/owa/auth/logon.aspx?replaceCurrent=1&reason=2&url=https://mail.enel.com/owa/
    USER : enelint\CO1030576957

  -- global protect --
    HOST : https://enel-poc.gpcloudservice.com/global-protect/portal/portal.esp // aqui se descarga la aplicacion
    USER : CO1030576957
    PASS : 1ndR2@#20201
    URL  : enel-poc.gpcloudservice.com  // se debe colocar cuando se abra la app despues de instalada
    USER : CO1030576957
    PASS : Indr42020&
    DOOR : colombia

-- recibos apartamento ibague -- 
  LUZ     : https://www.celsia.com/
  CUENTA  : 576217
  FEHCA   : 13

  GAS     : http://www.alcanosesp.com/
  CUENTA  : 975067
  FECHA   : 03

  AGUA    : https://www.ibal.gov.co/
  CUENTA  : 148504
  FECHA   : 08

-- instalar librerias python de forma manual --
  0. python get-pip.py --proxy="proxy-aws.risorse.enel:8080"
  1. descargar tar.gz y colocar en servidor LINUX
  2. cd carpeta donde esta el tar.gz
  3. tar -xvzf archivo.tar.gz
  4. cd carpeta
  5. python setup.py install

-- oracle crear tabla --
  DROP TABLE servicios_bidding_log;
  DROP SEQUENCE seq_servicios_bidding_log;

  CREATE TABLE servicios_bidding_log (
    id NUMBER(5) PRIMARY KEY,
    nombre VARCHAR2(50) NOT NULL,
    fecha_add DATE,
    fecha_mod DATE
  );

  CREATE SEQUENCE seq_servicios_bidding_log  
  MINVALUE 1 
  MAXVALUE 9999999999999999999999999999 
  INCREMENT BY 1 
  START WITH 1 
  NOCACHE  
  NOORDER  
  NOCYCLE ;

  CREATE OR REPLACE TRIGGER trg_servicios_bidding_log 
  BEFORE INSERT OR UPDATE ON servicios_bidding_log  
  FOR EACH ROW
  BEGIN
    IF INSERTING THEN
      :NEW.id := seq_servicios_bidding_log.NEXTVAL;
      :NEW.fecha_add := SYSDATE;
    ELSIF UPDATING THEN 
      :NEW.fecha_mod := SYSDATE;
    END IF;
  END;

-- oracle crear campo boolean -- 
  1. ALTER TABLE ctof_politicas DROP CONSTRAINT chk_ctof_politicas;
  2. ALTER TABLE ctof_politicas ADD CONSTRAINT chk_ctof_politicas CHECK (ESTADO IN ('false','true'));

-- crear trigger mysql --
  DELIMITER $$
  CREATE DEFINER=`g6mweb3to90u`@`localhost` EVENT `setStatusMonth` ON SCHEDULE EVERY 1 DAY STARTS '2020-02-17 01:00:00' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'modifica el estado de los giros que llevan mas de un mes' DO UPDATE giros.giro 
    SET giro_estado_id = 10 
    WHERE DATEDIFF(now(), giro_creacion) > 30  
    AND giro_estado_id in (2,5)$$
  DELIMITER ;

-- WIFI --
  -- Casa Suegra --
    red : dilia porras plus
    pass : 37922180

-- REACT JS --
  npx create-react-app my-app
  cd my-app
  npm i react-router-dom --save
  npm install react-bootstrap bootstrap
  npm install react-icons --save

  npm install @material-ui/core
  npm install fontsource-roboto
  import 'fontsource-roboto';
  npm install @material-ui/icons

-- LARAVEL --
  php artisan make:model userDirection -m
  php artisan migrate
  php artisan migrate --seed
  php artisan make:controller directionController --resource

  php artisan make:migration create_user_profile_table --table=user_profile

-- ANGULAR --
  ng generate component components/shopping-car/direction --skipTests=true

DROP DATABASE your_store ;
CREATE DATABASE your_store ;

AEIndra2021&

1ndR2@#20201

1ndR2@#20201 vpn


4.400.000 salario
500.000 variable
100.000 auxilio home officee

agregar codigo 33810 =  or t1.cod_sic = '33810'
PONER 17 EN LA FEHCAS 
primeras 5 hojas es la fecha de adjudicacion memrcado mayoreitsa
otras hojas es fecha firma mercado no regulado
hoja mnr__v_bolsa clausula
hoja mnr__v_fijo 1-06-26300

G_CONTRATOS_MM -> SIMMER_60000_0010701 (FECHA_FIR_CON) ,COD_CONT_TRAD *  (SELECT FECH_FIR_CON FROM simmer_60000_0010701 WHERE cod_sic = t1.cod_sic) as FECHA_ADJUDICACION
G_CONTRATOS_MNR -> SIMMER_60000_0010101 (FECHA_FIRMA), CONT_TERCEROS * (SELECT MAX(fecha_firma) FROM simmer_60000_0010101 WHERE cod_cont = t3.cod_cont) as FECHA_FIRMA,