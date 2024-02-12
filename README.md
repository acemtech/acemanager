# aceMANAGER

aceMANAGER est une solution permettant la gestion de tout(e) comorien(ne) se trouvant au Maroc.
Cette solution vise à remédier au problème de recessement voire double recensement des étudiants, travailleurs et résidents comoriens sur le territoire marocain.

## Contexte et définition du problème

On a de plus en plus des comoriens à gérer. Aujourd'hui tout est consigné dans un fichier Excel, pire encore du papier blanche écrit en bleu que l'on partage. Et cela pose plein de problèmes :

* Le double recensement de chaque année ou de chaque bureau de sous section que ce soit sur du papier ou via google forms.
* Le multiple recensement des personnes ayant des soucis pour le dépot ou le renouvellement de la carte séjour
* Le nombre d'étudiants lauréats qui voudriont s'inscrire aux Masters, Doctorats
* Impossible de travailler dessus plusieurs en même temps.
* Ce n'est pas très aisé de trouver les personnes précédentes
* De plus, lorsque chaque sous section veut partager les informations avce la BE, on le fait par mail, et cela devient le fouillis : on ne retrouve pas facilement les messages.
* Et comme pour les années à venir le Maroc (AMCI) compte éduquer au moins 3000 comoriens (jusqu'en 2030) la gestion de cette masse d'individus est la propriété stratégique de l'ACEM TECH, ce point est à travailler d'urgence.


## Objectif du projet
Nous voulons offrir un meilleur service dans la gestion des comoriens résident au Maroc à l'aide d'un véritable outil de gestion de base de données. Nous pensons pouvoir résoudre le problème cité ci-haut à 80%.

## Périmètre

Nou snous concentrons sur tout(e) comorien(ne) se trouvant au Maroc.
Nous mettons en place un outil qui gère les comoriens de partout dans le Maroc.

## Description fonctionelle des besoins

Le système de gestion des comoriens supporte le processus d'ajout d'une personne, modifier ses informations, de supprimer l'individu, de genérer différents rapports.

L'administrateur principale gère toutes les activités des administrateurs secondaires et/ou modérateurs.

Le modérateur est choisi par sous-section (ville). Chaque sous-section (ou ville) a un(e) et un(e) seul modérateur(rice).

Le modérateur ajoute les informations de l'individu ainsi que les détails de sa carte séjour si la personne est régularisée.

Un individu a comme informations (*nom, prénom, numéro de passeport, cin, matricule amci (si boursier), formation, ville, naissance, statut d'adhésion, email, faculté/institus*).

Le modérateur est un individu. Chaque session de connexion du modérateur doit être connu par l'administrateur principal.

La carte séjour doit contenir (*nom, prénom, naissance, ville, obtention, expiration, adresse, pin*)

L'administrateur doit être capable de générer des rapports comme:
  
- Liste des personnes qui n'ont pas la carte séjour et leur motifs
- Liste des étudiants lauréats licence et/ou master
- Liste des doctorants en fin de cycle
- Liste des personnes par région
- Liste des ressortissants par île.
- Taux de réussite et/ou d'échecs par ville et/ou region 

L'application est réalisé avec **le langage de votre choix**.


  
