*** Keywords ***
Lancer Demo
    Open Browser	${LOGIN URL}	${BROWSER}
    
Saisir
	[Arguments]	${champ}	${valeur}
    Input Text	${champ}	${valeur}

Cliquer sur le lien
	[Arguments]	${lien}
    Click Link	${lien}
	
Cliquer
	[Arguments]	${element}
    Click Element	${element}
	
Valider
	Submit Form