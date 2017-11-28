*** Settings ***
Documentation     Formation Robot Framework
Library           Selenium2Library
Resource      	  Framework.robot
Test Template       Connexion réussie

*** Variables ***
${LOGIN URL}      http://demo.glpi-project.org
${BROWSER}        firefox

*** Test Cases ***		username	password	fullname
Connexion Admin			admin		admin		admin
Connexion SuperAdmin	normal		normal		normal


*** Keywords ***	
Connexion réussie
	[Arguments]   ${username}	${password}	${fullname}
	Lancer Demo 
	Saisir	login_name	 	${username}
	Saisir	login_password	mauvaismdp
	Valider
	Cliquer sur le lien	Log in again
    Saisir	login_name		${username}
	Saisir	login_password	${password}
	Valider
	Page Should Contain	${fullname}
	Cliquer	deconnexion
    [Teardown]    Close Browser
