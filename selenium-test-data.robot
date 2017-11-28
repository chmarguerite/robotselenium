*** Settings ***
Documentation     Formation Robot Framework
Library           Selenium2Library
Resource      	  Framework.robot
*** Variables ***
${LOGIN URL}      http://demo.testlogiciel.pro/dolibarr
${BROWSER}        internetexplorer

*** Test Cases ***
Connexion réussie
	Lancer Demo 
    Saisir	username	admin
	Saisir	password	Kanary1511
	Valider
	Page Should Contain	SuperAdmin
    [Teardown]    Close Browser
