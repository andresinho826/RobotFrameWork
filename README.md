Here, I will share all the information related to the project, tips, and more. this project was created on June 05, 2024


---------------------------------------------------------------------------------------------
05-june-2024
---------------------------------------------------------------------------------------------

-> **COMMANDS COURSE ROBOTFRAMEWORK** -> Rodrigo Villanueva
Udemy -> https://globant.udemy.com/course/master-robot-framework-nivel-1-en-espanol/learn/lecture/28415428#overview
youtube -> https://www.youtube.com/@RodrigoVillanuevaN/playlists

robot .\nombre de la clase.robot (enter)
robot .\Test_uno.robot (press enter)


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

-> **algunas herramientas para mapear locator ( las podemos instalar en nuestro navegador, para este caso en particular, chrome web store)**

-> css and xpath checker
-> relative xpath helper
-> true path extension
->chroPath


#username -> id
.username -> clase
[type='text'] -> atributo
//button[@type='button'] -> XPath
usar el OR -> //input[@id='userName' or @type='text']
usar el AND -> //input[@id='userName' and @type='text']
seleccionar por texto p1 -> //div[text()='Text Box']
seleccionar por texto p2 -> //span[text()='Dynamic Properties']
seleccionar por contains -> //span[contains(text(),'Box')]

podemos combinarlos de acuerdo a la necesidad que tengamos

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-> **NOTA: para configurar mis driver debo descargarlos y ponerlos enla ruta script the python**

-> **tips -> para ahorrar tiempo a la hora de copiar mis locator puedo hacer los siguiente**

me voy a la ruta
-> window -> configuraciones -> sistema -> porta papeles -> boton activar
-> window -> setting -> system -> clipboard history -> turn on
- cuando ya este activo, nos vamos a nuestra pagina web y copiamos de forma seguida nuestros locator
- cuando ya esten todos copiados, entonces nos vamos a nuestro id y cuando los queramos pegar uno por uno
- utilizamos las teclas WIN + V


---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
-> hacer scroll robotframework
# hacer scroll to be visible button on page
    execute javascript      window.scrollTo(0,600)


> **Paginas para hacer testing automation practico**

> https://www.saucedemo.com/
> https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
> https://www.federico-toledo.com/sitios-de-prueba-para-practicar/
> https://opensource-demo.orangehrmlive.com/

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
**Generar reporte en un folder en especifico**

robot -d nombre_folder_log_o_reporte .\nombre_clase.robot

---------------------------------------------------------------------------------------------
06 - june - 2024
---------------------------------------------------------------------------------------------

- practica dos
- validando titulo
- validando visible enable
- validando por atributo
- element should not be enable
- -mejorando tiempos
- correr solamente por tal ( despues de la **-i** escribimos el nombre del tag que queremos correr ( o los que queremos correr)
- ejemplo = robot -d ..\reporte -i nombre_tag -\nombre_clase.robot


**RADIO BUTTON**

- Escribimos select radio button, luego el name del boton y por ultimo el value ( puede ser el ID tambien)
- tambien se puede mapear directamente con el click button y con su xpath locator

---------------------------------------------------------------------------------------------
07 - june - 2024
---------------------------------------------------------------------------------------------

**checkbot**
- Escribimos select checkbox button, luego el name del boton y por ultimo el value ( puede ser el ID tambien)
- tambien se puede mapear directamente con el click button y con su xpath locator

  **selectore -> comboBox**
  - nos permite seleccionar por label, index, value
    - tomamos el id del select
  - y la siguiente es la etiqueta a la cual vamos a disparar
  - 
  **set selenium speed**
    - configurar el timpo de todas nuestras funciones
    - ejemplo 1= set selenium speed    1s
    -  ejemplo 2= set selenium speed    1    second
 
    **set selenium timeout**
    - funcion para la espera de los elementos
    - espera el tiempo configurado a nuestros elementos
    - ejemplo = set selenium timeout    15
 
    **NOTA: no olvidar utilizar validaciones**
    -element should be enabled or visible

    **set selenium implicitywait**
    - enviamos un valor el cual obliga al sistema a esperar nuestros elementos antes de cargarde en la pagina
    - si lo encuentra antes qeu se cumplo el tiempo configurado, sigue su ejecucion.

  # ejecutanto con el tag test_tres
  robot -d ..\reportes_radio_button -i test_tres .\Radio_button.robot
  
  # ejecutando sin tag
  robot -d ..\reportes_radio_button -i .\Radio_button.robot


---------------------------------------------------------------------------------------------
10 - june - 2024
---------------------------------------------------------------------------------------------
 - actualimos nuestro file base.robot
 - vamos a hacer el ejemplo de la pagina form = 
 - https://qa-automation-practice.netlify.app/register
 - utilizamos los wait para validar contenido dentro de la pagina


---------------------------------------------------------------------------------------------
11 - june - 2024
---------------------------------------------------------------------------------------------

* manipular alert with robotframework
  * handle alert  accept
* manipular iframe
  * -> seleccionar el frame: select frame
  * -> seleccionar las accciones a realizar : mapear los campos, dar click, ingresar text, etc
  * -> siempre cerrar el frame: unselected frame


* construimos todas la validaciones de login en la pagina Orange HR
* ejecutar todas las pruebas de con un filto
* (ingresamos a la ruta) robot vali*.robot -> ejecuta todas las que empiezan con **vali**
* con este comando lanzamos todas las pruebas dentro de nuestra carpeta tests -> robot *.robot
* NOTA: hace la ejecucion en orden alfabetico.




---------------------------------------------------------------------------------------------
12 - june - 2024
---------------------------------------------------------------------------------------------


-> hoy aprendimos sobre los siguientes temas
- switch to, para intercambiar de browser
- go to, para intercambiar tambien de brower
- go back, para retornar al browser previo
- ***keywords***, que en pocas palabras se utiliza de forma igual que una funcion y luego los llamamos en los ***test cases***





---------------------------------------------------------------------------------------------
13-14 - june - 2024
---------------------------------------------------------------------------------------------

-> keywords
* realizando ejercicios con respecto a keywords , separar en diferentes directorios dentro de la carpeta resources
* validando las mejores practicas para que cada vez el codigo sea mas legible y mantenible.


17 Julio

-> creando la clase excel1.robot
-> con esta clase podremos cargar los datos desde un archivo excel
-> ejecutamos de la siguiente manera

robot -d ../reportes_keyword .\Excel1.robot


-> librerias para interactuar con excel

https://pypi.org/project/robotframework-exceldatadriver/

pycharm -> setting -> project:Robotframework -> python interpreter -> robotframework-datadriver


step by step -> https://www.youtube.com/watch?v=ZAdqnG65fzA
ejecutamos este comando en la consola y listo.

pip install -U robotframework-datadriver[XLS]



--------------------------------------- BASES DE DATOS -------------- 12 NOV 24

-> necesitamos instalar 2 librerias ( para este caso estamos trabajando con xampp)

robotframework-databaselibrary

pyMySQL
