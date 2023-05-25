Feature: Consultation commande internaute

Scenario Outline: En tant qu_internaute je souhaite pouvoir consulter mes commandes de facon a connaitre l_etat de mes commandes_SN
Given : L_internaute se trouve sur la page des commandes du site NOZAMA
When : L_internaute selectionne la page de consultation de l_etat de mes commandes
Then : Le site Nozama affiche l_<etat de la commande> de l_internaute

Examples:
    | etat de la commande | 
    | En cours            |
    | Livree              |

Scenario: En tant qu_internaute je souhaite pouvoir consulter l_etat de ma commande qui n_existe pas_SE
Given : L_internaute se trouve sur la page des commandes du site NOZAMA
When : L_internaute selectionne la page de consultation de l_etat de mes commandes
And : Il n_y a pas de commande realisee sur le site NOZAMA
Then : Le site NOZAMA affiche un message : "Vous n_avez aucune commande en cours"


#Réviseur : Gwen
#On ne sélectionne pas une page + comment en sélectionnant quelque chose qui a plein de commandes on arrive à en afficher une seule ?
#contexte : la page de SES commandes
#When a refaire / Given a modifier légérement / And a clarifier (l'internaute n_a pas de commandes passees)
#Message faux on dirait qu'il consulte ses commandes en cours plutot que toutes ses commandes passees 
#Modifier les titres de scénario