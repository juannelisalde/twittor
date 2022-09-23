git config --global -e #   listar configuracion global
git config --global init.defaultBranch main # cambiar nombre de rama master a main
git config --global pull.ff only # para hecer merge fast forward por defecto sin que muestre error
git config --global pull.rebase true # evitar hacer el rebase cuando hay lineas en remoto y local, en el local se deben buscar  ficheros con conflicto y seleeccionar que hacer ! vsc, hacer git commit -am , git rebase --continue y push
git init # iniciar repositorio local
git status # ver el estado del repositorio local
git add .  # agregar todos los ficheros al stage
git add <file or folder> # agregar fichero al stage
git reset <file or folder> # quitar fichero del stage
git commit -m "primer commit" # guarda una foto en el repositorio local
git log # ver los commits 
git config core.autocrlf true # quitar error CRLF
git checkout -- . # dejar respositorio en el ultimo commit
git checkout -- nameFile # dejar fichero en el ultimo commit
git branch $ ver rama actual
git branch -m master main # renombrar rama
git commit -am "mensaje commit" # añadir ficheros al stage y hacer commit, funciona para fichero a los que ya se les esta haciendo seguimiento
crear fichero .gitkeep para las carpetas de imagenes que iran vacias pero se requieren para el proyecto
git config --global alias.s "status -sb"
git config --global alias.lg "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
git commit --amend -m "se corrigio el mensaje" # corregir mensaje del ultimo commit
git reset --soft eb6b51b # se coloca id del commit que se muestra en el log, el soft mantiene los cambios sin sacar del stage, no es destructivo
git reset --mixed 7999daa # se coloca id del commit que se muestra en el log, el mixed mantiene los cambios y saca del staged, no es destructivo
git reset --hard 7999daa # se coloca id del commit que se muestra en el log, el hard, el repositorio vuelve a como estaba en ese punto, es destructivo
git reflog # revisa todas las referencias de git hechas, ser revisa el id del commit que estuvo bien y se hace un -> git reset --hard <id>
git mv destruirMundo.md salvarMundo.md # cambiar nombre de un fichero moviendolo, lo deja el stage para hacer commit y que quede la traza
git rm destruirMundo.md # eliminar fichero, lo deja el stage para hacer commit y que quede la traza
cuando se cambie el nombre de un archivo o se elimine sin git bash, se debe hacer el git add y git commit
crear fichero .gitignore y alli colocar las carpetas o ficheros que no se desean evaluar

git branch # ver ramas repositorio
git branch nameNewBranch # crear nueva rama
git checkout nameNewBranch # moverse a otra rama
git merge nameNewBranch # se debe estar en la master, es decir se ubica con checkout en la rama a la cual se le hara el push con la otra rama (hay tres tipos de merge {fast forward: no hay cambios en rama principal, union automatica: cuando hay cambio en rama principal que la rama segundaria desconoce se debe con el git bash :wq, union conflictos o manual: cuando 2 ramas afectan las mismas lineas se debe con editor de codigo editar como quedara y despues hacer commit -am })
git branch -d nameNewBranch # eliminar rama, esto se deba hacer cuando no se use mas la rama (git branch -d nameNewBranch -f para forzar borrado)
git checkout -b nameNewBranch # crear nueva rama y se para en ella

git tag # ver todos los tags
git tag -a nameNewTag -m "Version 1.0.0 lista" # crea tag se crear como version (v1.0.0)
git tag -d nameNewTag # elimina tag
git tag -a v0.1.0 79c2485 -m "Version alpha de app" # asignar tag a commit specifico
git show v0.1.0 # ver informacion de un tag

git stash # crear un stash, guarda el wip, y deja en el ultimo commit, es decir los ficheros que no estan en el stage vuelven a su version anterior
git stash save "descripcion stash" # crear un stash con una descripcion propia
git stash pop # recuperar y eliminar ultimo stash, hacer commit -am despues
git stash apply stash@{1} # recuperar stash por id, hacer commit -am despues
git stash list # ver todos stashes 
git stash show stash@{1} # ver stash por id
git stash drop stash@{1} # eliminar stash por id
git stash clear # borrar todos los stash

git rebase -i id # renombrar un commit se debe usar el rework se entra en vim
git rebase -i HEAD~4 # fusionar commits commit se debe usar el squash  se entra en vim

git remote add origin https://github.com/juannelisalde/liga-justicia.git # agrega el origin 
git remote -v # ver donde se obtiene y se pone la informacion
git branch -M main # renombra a rama principal
git push -u origin main # asignar el origin por fefecto para los push
git push --tags # subir los tags a github

git config pull.rebase true # para aceptar las linea de web cuando son las mismas editadas local y github, los ficehros iguales apareceran con ! y se debe aceptar el cambios en el fichero, despues se debe hacer git commit -am, desúes git rebase --continue, despues git push (arriba hay comando para evitar hacer esto)

git fetch # trae cambios del repositorio

git clone https://github.com/juannelisalde/liga-justicia.git

fork es traer una copia de un repositorio donde no se puede hacer push, pero se puede solicitar un git pull ejempl facebook

