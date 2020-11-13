---
title: Data management
layout: tools-data
show_posts: false
lang: fr
permalink: /tools/data.html
---

# Gestion des données

La tâche principale du projet RISM est de créer et de conserver un riche ensemble de données sur les sources musicales, avec actuellement environ 1,5 million d'enregistrements. Le format sous-jacent utilisé par le RISM dans Muscat est [MarcXML](https://www.loc.gov/standards/marcxml//), le format bibliographique le plus répandu. Les descriptions des sources musicales dans le RISM comprennent des incipits de notation musicale encodés, avec actuellement 2,25 millions d'incipits dans l'ensemble des données du RISM. Les incipits sont encodés au format [MEI](https://music-encoding.org/). De plus en plus, les notices décrivant une source sont accompagnées d'images numérisées. Celles-ci sont rendues accessibles par la norme International Image Interoperability Framework ([IIIF](https://iiif.io/)). 

Toutes les données bibliographiques et musicales produites par le RISM sont publiques et leur utilisation et réutilisation sont libres. En règle générale, la numérisation des sources est également libre. Le RISM Digital Center gère l'énorme quantité de données produites par le RISM dans le monde entier, en suivant les [principes FAIR](https://www.go-fair.org/fair-principles/) pour la gestion des données scientifiques : trouvables (Findable), accessibles (Accessible), interopérables (Interoperable) et réutilisables (Reusable). Cela permet au RISM d'être enregistré dans [re3data](http://re3data.org/repository/r3d100013190), une référence internationale pour les archives de données libres. 

Tout le code informatique du RISM Digital Center est géré par des archives Git accessibles au public et hébergées sur [GitHub](https://github.com/rism-digital). Cela implique la mise à disposition de l'historique complet du code source et son marquage. Les dépôts Git utiliseront des systèmes d'intégration continue (par exemple, Travis) afin de construire et de tester automatiquement le logiciel chaque fois que des modifications sont apportées au code.
