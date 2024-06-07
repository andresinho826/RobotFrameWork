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


