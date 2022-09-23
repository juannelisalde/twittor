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

  https://CO1030576957@bitbucket.springlab.enel.com/scm/stvp/trdh-mape.git

  git remote rm origin
  git remote add origin https://juannelisalde:Juancho.123@github.com/juannelisalde/girosRefactor.git
  git remote add origin https://juannelisalde:Juancho.123@github.com/juannelisalde/yourStore.git
  git remote add origin https://juannelisalde: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@github.com/juannelisalde/twittor.git
  git remote add origin https://edegel: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@github.com/jcatencia/Emgesa.git
  git remote add origin https://CO1030576957@bitbucket.springlab.enel.com/scm/stga/indisponibilidades.git
  git remote add origin https://CO1030576957:Tolima#20223@bitbucket.springlab.enel.com/scm/spg/solpagos.git
  git remote add origin https://CO1030576957:Tolima#20223@bitbucket.springlab.enel.com/scm/cot/cotizador.git
  git remote add origin https://CO1030576957:Tolima#20223@bitbucket.springlab.enel.com/scm/satv/sa-tr-colombia-volopt.git
  git push -u origin master
  
  git fetch

  https://edegel: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@github.com/jcatencia/Emgesa.git
  

  https://juannelisalde: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@github.com/juannelisalde/girosRefactor.git
  https://juannelisalde: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@github.com/juannelisalde/girosRefactor/archive/refs/heads/master.zip

  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

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

-- INDRA --
  -- EXCELLENCE CHILE (correos) -- 
    GIT     : https://bitbucket.springlab.enel.com/projects/AP35539M03B (https://bitbucket.springlab.enel.com/projects/AP35539M03B/repos/backend-pwc/browse/soapService)
    -- SOAP --
      AUTH  : basic
      USER  : cuentatecnica@indracompany.com
      PASS  : Az0123456789$&

      DEV   : http://slaacgpo5f00.enelint.global/backend_excellence_ch/soapService/mailSap.php?wsdl
      QA    : https://clientes-enel-emgesa.enel.com/backend_excellence_ch/soapService/mailSap.php?wsdl?wsdl
    
    -- servidor de aplicacion linux desarrollo -- 
      HOST  : slaacgpo5f00
      HOST  : 10.152.24.177
      USER  : AE46562
      PASS  : AEIndr@2022*2
      FAKE  : porta
      PASS  : oHykT.41

    -- servidor de aplicacion linux QA -- 
      HOST  : claacgpo5f00
      HOST  : 10.152.24.50
      USER  : AE46562
      PASS  : AEIndr@2022*2
      FAKE  : porta
      PASS  : mPOcH_14

    -- servidor de aplicacion linux produccion -- 
      HOST  : elaacgpo5f00
      HOST  : 10.154.80.70
      USER  : AE46562
      PASS  : AEIndr@2021&
      FAKE  : porta
      PASS  : LrSAK.28

    -- servidor base de datos desarrollo -- 
      HOST  : rdspexnas.cmbulm4j9ohi.eu-central-1.rds.amazonaws.com
      DDBB  : pwcdb
      USER  : pwcapp
      PASS  : octke-18

    -- servidor base de datos QA -- 
      HOST  : rdspexnac.cmbulm4j9ohi.eu-central-1.rds.amazonaws.com
      DDBB  : pwcdb
      USER  : pwcapp
      PASS  : rbhus+79

  --  GRREPORTING CODENSA --
    -- SERVIDOR PRODUCCION --
      HOST  : quantumgreport.enel.com
      USER  : greportuser
      PASS  : D3IjRRgkFtE32022
      FAKE  : root
      PASS  : D3IjRRgkFtE32022D3IjRRgkFtE32022
      ROUTE : /app/html

    -- SERVIDOR DESARROLLO --
      HOST  : greportingdes.enel.com
      USER  : greportuser
      PASS  : D3IjRRgkFtE32022
      FAKE  : root
      PASS  : D3IjRRgkFtE32022D3IjRRgkFtE32022
      ROUTE : /app/html

      USER  : admincodensa
      PASS  : Codensa2021&

    -- BASE DE DATOS PRODUCCION 
      HOST  : elaacmco8d00
      PORT  : 5432
      DDBB  : planner
      USER  : simmer_admin
      PASS  : juwvz!04
      
    -- BASE DE DATOS DESARROLLO 
      HOST  : 10.154.213.39
      PORT  : 5432
      DDBB  : planner
      USER  : simmer_admin
      PASS  : mgrhc:35
    
    para crear enlace simbolico proyecto 
      cd /var/www/html
      ln -s /app/html/comercializador

    USER  : edegel # usuario root, greporting para crear menu
    PASS  : greport0815

    Se debe crear fichero .html que contendra la ruta de nuestro modulo
      /app/html/greporting/front

    Editar fichero para evitar doble menu
    /app/html/greporting/gestion/rules/tpl.prv
      <priviledge var.D.templ=<<'../../../quantum/' >
      <grant>"1"</grant>
      <exit>1</exit>

    ruta del log : /app/html/vg/gestion/log/FECHA/gevent.log

    cpan -i CAM::PDF
    cpan -i Archive::Extract

  -- S&S -- 
    Se conecta a la VPN de indra solo para GIT

    -- COLOMBIA -- 
      vpn indra     : https://mobility.indracompany.com/ # hacer porceso con navegador edge, porbar conexion en git.indra.es
      instaladores  : https://indra365-my.sharepoint.com/personal/vbongiovanni_indracompany_com/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fvbongiovanni%5Findracompany%5Fcom%2FDocuments%2FTraspasos%2FWeb%20Contratista%20Colombia # descsargar .7z, segir instructivo, tener encuenta agregr maven a las varables de entorno y tener instalado un jdk de java, tener encuenta que el jdk y jre deben ser iguales, eclicpse y JAVA_HOME https://roufid.com/no-compiler-is-provided-in-this-environment/
      DDBB          : 
        descarga mibaseAQ.backup, 
        crear base de datos pgc en postgres local, 
        poner fichero mibaseAQ.backup en la carpeta bin del postgres, 
        despues ejecturar comando con cmd desde la ruta bin de postgres: pg_restore -h localhost -p 5432 -U postgres -d pgc -v "mibaseQA.backup", 
        dar click en run server en apartado server
          HOST    : http://localhost:8080/pgc/
          USER    : kfroman@testindra.com
          PASS    : C0l0mb1a
          PROFILE : administrador

          HOST    : https://gestorcolombia.enel.com/pgc/
          USER    : kfroman@indracompany.com
          PASS    : C0l0mb1a
          PROFILE : administrador

      git config --global http.sslVerify false
      git clone https://jdnaranjo@git.indra.es/git/EASSLT/Web_Contratistas_Colombia

      java sprint, java server faces, print faces

      se hace debug con prod, error pasa por debajo, descargan master y ejecutan proceso local, tener en cuenta que se debe arrancar el servidor si el proyecto y despues con el
      cuando se haga el git clone de master para trabajar en local, comertar las linea 49 a 52 (4) /pgc/src/main/webapp/WEB-INF/web.xml 

      para versionar en calidad / PROD se debe modificar 
        -- QA WINDOWS--
          HOST  : 10.152.24.13
          USER  : ENELINT\S0008392
          PASS  : Indra$143V1V
          URL   : http://10.152.24.13:8080/pgc/
        
        -- PROD WINDOWS --
          HOST  : 10.154.80.42
          USER  : ENELINT\S0008392
          PASS  : Indra$143V1V
          URL   : http://10.154.80.42:8080/pgc/

        web.xml # comentar linea 49 a 52
        config.propierties # descomentar linea 64, 65, comentar local y produccion
        jdbc.propierties # descomentar QA comentar local y produccion
        cd C:\Users\jdnaranjo\eclipse-workspace\indra\Web_Contratistas_Colombia
        mvn clean install -U
        cd C:\Users\jdnaranjo\eclipse-workspace\indra\Web_Contratistas_Colombia\target
          entrar servidor remoto windows
          copiar pgc.war en el servidor, en la carpeta wars/fechahoy (C:\Users\S0008392\Desktop\Wars\08-03-2022), 
          abrir configure toncat en el servidor 
          dar clic en stop
          D:\Tomcat 9.0\webapps
            eliminar pgc y pgc.war
          copiar C:\Users\S0008392\Desktop\Wars\08-03-2022\war.pgc D:\Tomcat 9.0\webapps
          abrir configure toncat en el servidor 
          start
          ok
          probar en http://10.152.24.13:8080/pgc/
    
  -- INGENPLAN --
    HOST  : https://ingenplan.enel.com/Ingenplan/#/login
    USER  : sadmon 
    PASS  : pftl2017

  -- MAPE --
    -- THINGS -- 
      source ~/.bash_profile ## variables de entorno 
      source ~/miniconda3/bin/activate base ## activa python
      cd /app/WebSites/grepo/MHT_MPODE/desarrollo/JuanDa
      !944 ## shortcut
      history ## muestra !944

      se abre tarea en jira
      se da click en crear rama bitbuckut
      con git se mueve a la rama creada
      git checkout raram
      git fetch --all
      git pull
      comprimir carpeta delfos .zip

      se carga carpeta compirmid a la carpeta JuanDa del servidor
      en el servidor se descripime la carpeta 
      unzip delfos.zip
      se crea carpeta Log_SQLLOADER en /delfos/backend/commons
      chmod -R 777 delfos
      cd delfos
      python manage.py runserver 10.152.24.146:8087

      netstat -ntlp
      kill -9 6599

      despues de hacer el ajuste 
      git add .
      git commit -m "description"
      git push
      sen entra bitbucket y se crea pull request "create pull request"
      se selecciona rama creada para el ajuste y la rema develope
      se verifican cambios antes del ok.

      para activar de QA
      cd /app/WebSites/grepo/MHT_MPODE/TRADING/delfos
      source ~/.bash_profile
      source ~/miniconda3/bin/activate base
      nohup python manage.py runserver slaacggrpf00:8085 &
      open google http://10.152.24.146:8085/inicio/

    -- COMMON -- 
      jira : https://jira.springlab.enel.com/secure/RapidBoard.jspa?rapidView=14589&projectKey=ASMHT&view=detail&selectedIssue=ASMHT-523
      bitbucket : https://bitbucket.springlab.enel.com/projects/STVP/repos/trdh-mape/browse
      git  : https://CO1030576957@bitbucket.springlab.enel.com/scm/stvp/trdh-mape.git

    -- APP DESARROLLO -- 
      HOST : 10.152.24.146
      USER : AE46562
      PASS : AEIndr@2022*2
      FAKEUSER : grepo
      PASS : lcAMs!55
      cd /app/WebSites/grepo/MHT_MPODE/desarrollo/JuanDa/delfos
      source ~/.bash_profile
      source ~/miniconda3/bin/activate base
      python manage.py runserver 10.152.24.146:8087
      nohup python manage.py runserver 10.152.24.146:8085 &
      https://asmht-dev.enelint.global/ # despues de aprobar pull request : 10.152.24.146:8085

    -- DDBB ORACLE DESARROLLO --
      HOST: 10.152.26.12
      SID: SMRD
      User: MHT_MPODE
      Pas: QHb78:LFm

    -- APP PRODUCCION -- 
      HOST : 10.152.165.246
      USER : AE46562
      PASS : AEIndr@2022*2
      FAKEUSER : gestims
      PASS : wlOiP_38
      cd /usuarios/MHT_MPODE/MAPE/desarrollo/JuanDa/delfos
      source ~/.bash_profile
      source /usuarios/MHT_MPODE/miniconda3/bin/activate base
      python manage.py runserver 10.152.165.246:8090
      nohup python manage.py runserver 10.152.165.246:8085 &
      https://asmht.enelint.global

      /usuarios/MHT_MPODE/MAPE/desarrollo/JuanDa/delfos/backend/commons/file_load/Admin_CargaDELFOS.py // comentar 83 y descomentar 84
      /usuarios/MHT_MPODE/MAPE/desarrollo/JuanDa/delfos/backend/front_data_process/callcloud/ClassCallCloud.py descomentar 105 para produccion

    -- DDBB ORACLE PRODUCCION --
      HOST: 10.152.166.25
      SID: GDMDBPRO
      User: MHT_MPODE
      Pas: QHb78:LFm

    -- PARA CREAR CARGAR LAS TABLA DE RESULTADO CON UN NUEVO PROCESAMIENTO --
      1. crear la tabla 
      2. crear el ctl -> backend/commons/ctls
      3. asociar dicionario() ctl a la tabla en -> backend/commons/file_load/Carga_sqlloader.py
      4.1. revisar 	Cargar_Archivos() en (entradas) -> backend\commons\file_load\Admin_CargaDELFOS.py 
      4.2. revisar Carga() en (entradas) -> backend\file_load\mht_out\fileLoadASMHT.py
      5. asociar tipo (mar, gen ... ) execute_dataProces() -> backend\commons\data_process\dataProcessManager.py
      6. asociar tipo (mar, gen ... ) class -> backend\data_process\gen_cmg\sec_process.py
    
    -- tarea usuarios --
      co1030576957@enel.com # se debe usar este correo para purebas

      https://asmht.enelint.global/inicio/getUserLoginEnel/
      https://docs.microsoft.com/en-us/graph/use-postman
      https://developer.mozilla.org/es/docs/Learn/Server-side/Django/Authentication
      
      python manage.py migrate
      python manage.py createsuperuser
      \delfos\urls.py
        #Add Django site authentication urls (for login, logout, password management)
        urlpatterns += [
            path('accounts/', include('django.contrib.auth.urls')),
        ]
      \frontend\models.py
        class Permisos(models.Model):
            class Meta:
                permissions = (
                    ("showCarga", "showCarga"),
                    ("showHolding", "showHolding"),
                    ("showDescarga", "showDescarga"),
                    ("showDiccionarios", "showDiccionarios"),
                    ("showReportes", "showReportes"),
                    ("showComparaciones", "showComparaciones"),
                )
      python manage.py makemigrations && python manage.py migrate
      \frontend\templates\base.html
        {% if perms.frontend.showCarga %}
            <li class="nav-item"> <a href="{% url 'carga' %}" class="nav-link"> <h4> Carga</h4> </a> </li>
        {% endif %}
      \frontend\views.py
        from django.contrib.auth.decorators import login_required
        from django.contrib.auth.decorators import permission_required
        @login_required
        @permission_required('frontend.showCarga')
        def carga(request):..

  -- Base de datos Chile desarrollo postgress -- 
    host: rdspexnas.cmbulm4j9ohi.eu-central-1.rds.amazonaws.com
    ddbb: pwcdb
    user: pwcapp
    pass: octke-18
  
  -- servidor desarrollo windows EMGESA / webservice -- 
    HOST : 10.152.25.89
    USER : ENELINT\A-AE46562
    PASS : AAEIndra2022*3

  -- servidor desarrollo oracle SIMMER_MOD_ADMINIS --
    HOST : 10.152.26.69
    USER : SIMMER_MOD_ADMINIS
    PASS : Galileo2016!
    PORT : 1521
    SID  : ogemas

  -- servidor QA oracle SIMMER_MOD_ADMINIS --
    HOST : 10.152.26.57
    USER : SIMMER_MOD_ADMINIS
    PASS : Galileo2016!
    PORT : 1521
    SID  : SMRD

  -- servidor desarrollo oracle GNUBILA --
    HOST : 10.152.26.69
    USER : GNUBILA
    PASS : $GNUBILA2016
    PORT : 1521
    SID  : ogemas

  -- servidor produccion windows EMGESA / webservice -- 
    HOSTNAME : E20ACGGESA00:8080
    HOST : 10.152.165.45
    USER : ENELINT\A-AE46562
    PASS : AAEIndra2022*3

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

  -- servidor produccion MAPE -- 
    HOST : 10.152.165.245
    USER : AE46562
    PASS : AEIndr@2022*2
    folder  : /usuarios/MHT_MPODE/MAPE/desarrollo/juan/delfos

  -- servidores GREPORTING -- 
    -- quitar bug de modulo nuevo
      vim /app/g/greporting/gestion/rules/tpl.prv
        <priviledge var.D.templ=<<'../../../solpagos/' >
        <grant>"1"</grant>
        <exit>1</exit>
        </priviledge>

    -- servidor desarrollo linux --
      HOST : 10.152.24.33 
      HOST : 10.152.24.35
      USER : AE46562
      PASS : AEIndr@2022*2

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
      HOST : 10.152.164.153 
      HOST : 10.152.164.155
      USER : AE46562
      PASS : AEIndr@2022*2

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
      GIT   : https://bitbucket.springlab.enel.com/scm/saegma/egma-visualizacion.git # branch juanDavidNaranjo
      
      HOST  : https://egma.enel.com/greportegma/front/juanDavid/index.html
      HOST  : https://egma.enel.com/greportegma/front/dashboard/index.html

      USER  : egma
      PASS  : greport0625
      
      USER  : co1030576957@enel.com
      PASS  : Tolima#20223

      HOST  : https://safeguard.enelint.global/RSTS/Login?response_type=token&redirect_uri=https%3A%2F%2Fsafeguard.enelint.global%2F
      USER  : A-AE46562
      PASS  : AAEIndra2022*3
      HOST  : elaacgegmf00
      ROUTE : /home/enelint/pam-02mb/juanDavid
      PRO   : /app/WebSites/greportegma/front/dashboard
      DEV   : /app/WebSites/greportegma/front/juanDavid

      bitbucket : https://bitbucket.springlab.enel.com/scm/saegma/egma-visualizacion.git

      USER  : su egma
      PASS  : TbUkJ+43

      DDBB  : rdspegmae.cf204urljlsi.eu-central-1.rds.amazonaws.com
      PORT  : 5432
      NAME  : egmapr
      USER  : egmarw
      PASS  : pbjuu_59

      1.  se descarga dashboard en el local
      2.  se sube carpeta local a /home/enelint/pam-02mb 
      3.  cp -R /home/enelint/pam-02mb/juanDavid/* /app/WebSites/greportegma/front/juanDavid

      buscador en greporting con id consulta EACD093C-5D66-11EC-9A89-C890D246E23F, ver listado, obetener data, buscar key y en esa key buscar nombre, click boton consultar (caudales actuales)

  -- credenciales github indra -- 
    USER : jdnaranjo@indracompany.com
    PASS : eGlobal2019

  -- credenciales swagger indra -- 
    HOST : https://swagger.io/
    SELE : SWAHHERHUB
    USER : jdnaranjo@indracompany.com
    PASS : eGlobal2019

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
      PASS : AAEIndra2022*3


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
      PASS : AAEIndra2022*3

      USERAPP : heyward
      USERAPP : 123123123

    -- servidor produccion oracle --
      HOST : 10.152.170.107
      USER : coes_datos
      PASS : c03sd4t0s
      PORT : 1521
      SID  : SMRD

  -- error teams -- 
    Error de ingreso Teams, correo, pero no en indraweb.net
    1. acceder a indraweb.net
    2. después entrar a: https://www.indraweb.net/languages/eses/sistemasinformacion/Paginas/Forti.aspx
    3. descargar e instalar Forticlient según sistema operativo, esta aplicación es para conectar a 
    la VPN de Indra
    4. reiniciar PC
    5. abrir Forticlient
    6. clic en configure VPN
    7. datos de configuración SSL-VPN
     Name : INDRA
     Description : Mobility
     remote gatway : https://co.easyworking.indra.es:443/mobility
     port : 443
     enable sign sign on : true
    8. abrir Teams e iniciar sesión
    9. cuando abra la ventana de inicio de sesión (donde se coloca el correo), dar clic en “no 
    puedo acceder a mi cuenta” y hacer el paso a paso
    10. después de reiniciar la contraseña, conectarse a la VPN con Forticlient
    11. iniciar sesión en Teams, con conexión a la VPN Forticlien

-- credenciales tudineroavenezuela -- 
  -- tudicom cpanel---
    host: https://tudineroavenezuela.com:2083/
    user: tudicomve
    pass: Jajs080910#

  -- mas bolivar cpanel---
    host: https://masbolivar.com:2083/
    user: bolivarvzla
    pass: Jajs080910#

  -- tudinero.com.co cpanel
    host: http://tudinero.com.co/cpanel
    user: tudicom
    pass: Jajs080910#

  -- tudinero.com.co
    host : tudinero.com.co
    user : tudicom
    pass : Jajs080910#

  -- tudinerodev goddady --
    host : https://tudinerodev.com:2083/
    user : calidad2020
    pass : Jajs080910#

  -- tudineroapp goddady --
    host : https://tudinero.app:2083/
    user : tudineroapp
    pass : Jajs080910#

  -- yampy --
    host : yampy.com.co
    user : yampycolombia
    pass : Jajs080910#

  -- yampy godaddy --
    host : yampy.com.co/cpanel
    user : yampycolombia
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
    PASS : Tolima#20223
    URL CHANGE PASS  : https://mail.enel.com/owa/auth/logon.aspx?replaceCurrent=1&reason=2&url=https://mail.enel.com/owa/
    USER : enelint\CO1030576957

  -- global protect --
    HOST : https://vpn-ext.enel.com or https://vpn.enel.com // aqui se descarga la aplicacion
    USER : enelint\CO1030576957
    PASS : Tolima#20223
    URL  : vpn-ext.enel.com or vpn.enel.com  // se debe colocar cuando se abra la app despues de instalada
    USER : CO1030576957
    PASS : Tolima#20223
    DOOR : colombia

-- recibos apartamento ibague -- 
  LUZ     : https://www.celsia.com/
  CUENTA  : 576217

  GAS     : http://www.alcanosesp.com/
  CUENTA  : 975067

  AGUA    : https://www.ibal.gov.co/
  CUENTA  : 148504

  ADMON   : https://www.pagosvirtualesavvillas.com.co/personal/pagos/
  CUENTA  : RECAUDO TORREON BUENA VISTA - ibague
  TORRE   : 4604

  CLARO   : https://portalpagos.claro.com.co/
  MAMÁ    : 60229701
  JUAN    : 3209004207

  PAGAR Y CONSULTAR IMPUESTO SOBRE VEHICULOS  : http://impuvehiculo.cundinamarca.gov.co/vehiculos/index.html

  juan.n.elisalde@gmail.com

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
    CREATE DEFINER=`g6mweb3to90u`@`localhost` 
    EVENT `disabledUsers` 
    ON SCHEDULE EVERY 1 DAY STARTS '2020-02-17 01:00:00' 
    ON COMPLETION 
    NOT PRESERVE 
    ENABLE COMMENT 'inactiva los usuarios que llevan mas de dos meses sin ingresar a la plataforma' 
    DO 
      UPDATE usuario
      SET usuario_estado_id = 2 
      WHERE usuario_modificacion < ADDDATE(NOW(), INTERVAL -2 MONTH)  
      AND usuario_estado_id = 1
    $$
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
  php artisan make:model Client -m
  php artisan migrate
  php artisan migrate:reset
  php artisan migrate --seed
  php artisan make:controller ClientController --resource

  php artisan make:migration create_user_profile_table --table=user_profile
  
  php artisan make:factory PucTypesPostFactory
  php artisan make:seeder PucTypesTableSeeder

  php artisan clear-compiled 
  composer dump-autoload
  php artisan optimize

-- ANGULAR --
  ng generate component components/clients --skipTests=true

-- servidor desarrollo linux AMATIA --
  HOST : 10.152.24.45
  USER : S0004484
  PASS : Enelemg2021$
  PORT : 22

-- servidor desarrollo mysql AMATIA --
  -- PRUEBAS
    HOST : dev01.cqctyzevt0bz.us-west-2.rds.amazonaws.com
    USER : dev01_myadmin
    PASS : rN7Otv5ZYgb9u64xyozW
    PORT : 3306
    SID  : my_emgesa

  -- DESARROLLO
    HOST : 10.154.215.53
    USER : AMA_DB_D
    PASS : exI42,LjV
    PORT : 3306
    SID  : amatia_bdd

-- cerrar requerimiento rit service now --
  1. click en RITM9849327487326
  2. cambiar estado a in progress
  3. click en vista previa task
  4. cambiar estado a work in progres, asignado a mi, notas del trabajo (seleccionar obserbaciones adicionales), guardar
  5. obserbaciones adicionales, notas del cierre, anexar correo con el ok, cambiar estado a closed complete, colocar fecha finalizacion del trabajo, guardar

-- para actualizar version expo --
  npm install --global expo-cli
  yarn
  npm i -g yarn
  expo upgrade
  npm i -g expo-cli
  expo start -c

-- YAMPY --
  super pagos
  5%, diferencia entre compra y venta, de alli sale la operación 
  1% utilidad general yampy, de todos los pagos de super pagos
  se consigna a traves de daviplata
  proyeccion, venta aproximada de 600 millones
  posibilidad de otros productos

-- credenciales -- 
  -- terpel --
    user: 13488489663
    pass: Lifemiles#123

  -- rodolfo --
    user: knrio28@gmail.com
    pass: k10281975
    nose: 93398639

  -- deina --
    user: deinamayorga87@gmail.com
    pass: 31238511
    phon: 3124429978
    Deinamayorga87
    1110462094
    Colegio Miguel de Cervantes Saavedra 

  -- INDRA --
    co37841786@enel.com : IndraCO2022&
    iaroa@indracompany.com : España2023*

-- query para actualizar tablas ingenplan --
  INSERT INTO simmer_60000_50201 (ID_REGISTRO, ID_COPIA, USUARIO_MODIF, FECHA_MODIF_TS, OPTIMIST_LOCK , NOMBRES_NUEVOS_CAMPOS)
  VALUES (simmer_sec_60000_50201.NEXTVAL,999999999999999,'SADMON,',CURRENT_DATE, 1, VALORES_NUEVOS_CAMPOS);

-- musica --
  Doctor krapula; 
  Ska-p; 
  Los autenticos decadentes; 
  La mosca tse-tse; 
  Molotov; 
  Coolio;
  Eminem; 
  Residente; 
  Eddy herrera; 
  Los cantantes; 

-- juoyter notebook --
  https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/install.html
  pip install jupyter_contrib_nbextensions
  jupyter contrib nbextension install --user
  pip install jupyterthemes
  jt -t monokai -f fira -fs 10 -nf ptsans -nfs 11 -N -kl -cursw 2 -cursc r -cellw 95% -T
  1018435626 alejandra
  1023887065 Juan

-- quitar peticiones a traves de proxy linux --
  env | grep -i proxy
  unset ftp_proxy

-- pendientes yampy pwa --
  Ajustar envio de giro, cuando de click en añadir amigo, ese amigo debe mostrase en la modal de confirmar envio

  var hour = (new Date()).getHours();
  if(hour < 8 || hour > 18){
    console.log("modal, fuera del horario");
  }else{
    console.log("abrir wahtsap, dentro del horario");
  }

  let details = navigator.userAgent;
  let regexp = /android|iphone|kindle|ipad/i;
  let isMobileDevice = regexp.test(details); 
  if (isMobileDevice) {
    document.write("You are using a Mobile Device");
  } else {
    document.write("You are using Desktop");
  }

Tolima#20225 correo indra
Tolima#20224 vpn indra
AEIndr@2022*2
AEIndr@2022*3

select * from usuario 
where usuario_modificacion < NOW() - INTERVAL 2 MONTH 
order by usuario_modificacion desc

Cafres2019

greporting-col-dev.enel.com
greportuser
D3IjRRgkFtE32022


cpan -i CAM::PDF
cpan -i Archive::Extract
cpan -i Spreadsheet::ParseExcel 


SELECT 
  factura_numero, 
  factura_proceso, 
  tipo_de_factura,
  concepto,
  fact_pdp_numero_radicado,
  CAST(fact_pdp_valor AS MONEY) AS fact_pdp_valor,
  fact_pdp_id,
  fact_pdp_factura_id,
  SUM(mercado_regulado) AS mercado_regulado,
  SUM(mercado_no_regulado) AS mercado_no_regulado,
  SUM(mercado_regulado) + SUM(mercado_no_regulado) AS total
FROM (
  SELECT 
    t2.factura_numero, 
    t2.factura_proceso, 
    t1.tipo_de_factura,
    t1.concepto,
    t2.fact_pdp_numero_radicado,
    t2.fact_pdp_valor, 
    t2.fact_pdp_id,
    t2.fact_pdp_factura_id,
    CASE t1.mercado
      WHEN 'MR' THEN SUM(t1.pesos)
      ELSE 0
    END AS mercado_regulado,
    CASE t1.mercado
      WHEN 'MNR' THEN SUM(t1.pesos)
      ELSE 0
    END AS mercado_no_regulado
  FROM (
    SELECT 
      t12.tipo_de_factura, 
      t11.concepto, 
      CASE t11.mercado
        WHEN 'AP' THEN 'MR'
        WHEN 'ENEL_MR_AP' THEN 'MR'
        WHEN 'ENEL_MNR' THEN 'MNR'
        ELSE t11.mercado 
      END AS mercado, 
      t11.fecha, 
      ROUND(MAX(t11.pesos),2) AS pesos
    FROM aprob_liquidaciones t11
    JOIN liq_conceptos_liquidacion_factura t12
      ON t12.concepto_liquidacion = t11.concepto
    GROUP BY t12.tipo_de_factura, 
      t11.concepto, 
      t11.mercado,
      t11.fecha
  ) t1 
  JOIN(
    SELECT 
      factura_proceso, 
      factura_version, 
      factura_numero, 
      factura_valor, 
      factura_valor_liquidacion,
      factura_periodo,
      factura_tipo,
      fact_pdp_numero_radicado,
      fact_pdp_valor,
      fact_pdp_id,
      fact_pdp_factura_id
    FROM sol_factura 
    INNER JOIN sol_factura_pdp 
      ON fact_pdp_factura_id = factura_id 
    WHERE fact_pdp_estado_id = 1
    AND fact_pdp_aprobador_id = $fact_pdp_aprobador_id
  ) t2  
    ON t1.fecha = t2.factura_periodo
    AND t1.tipo_de_factura = t2.factura_tipo
  GROUP BY t2.factura_numero, 
    t2.factura_proceso, 
    t1.tipo_de_factura,
    t1.concepto,
    t2.fact_pdp_numero_radicado,
    t2.fact_pdp_valor, 
    t2.fact_pdp_id,
    t2.fact_pdp_factura_id,
    t1.mercado
) AS t3
GROUP BY factura_numero, 
  factura_proceso, 
  tipo_de_factura,
  concepto,
  fact_pdp_numero_radicado,
  fact_pdp_valor,
  fact_pdp_id,
  fact_pdp_factura_id
ORDER BY factura_numero

demojuanes@gmail.com
Calidad2020#


no van en el admin de giros, reporte processados
cop
% utilida
tasa venta

balance * , las columnas cobertura (2 fila) dividir en 100 y colocar porcentaje
balance por agebte no formatear a fecha primera columnas