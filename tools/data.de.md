---
title: Data management
layout: tools-data
show_posts: false
lang: de
permalink: /tools/data.html
---

# Datenverwaltung

Die Kernaufgabe des RISM-Projekts besteht darin, einen reichhaltigen Datensatz über Musikquellen zu erstellen und zu kuratieren, der derzeit etwa 1,5 Millionen Datensätze umfasst. Das zugrundeliegende Format, das vom RISM in Muscat verwendet wird, ist [MarcXML](https://www.loc.gov/standards/marcxml//), das am weitesten verbreitete bibliographische Format. Die Beschreibungen von Musikquellen in RISM enthalten kodierte Musiknotationsincipits, wobei derzeit 2,25 Millionen Incipits im vollständigen RISM-Datensatz enthalten sind. Sie sind im [MEI-Format](https://music-encoding.org/) kodiert. In zunehmendem Masse werden Datensätze, die eine Quelle beschreiben, von digitalisierten Bildern begleitet. Diese werden über das International Image Interoperability Framework ([IIIF](https://iiif.io/)) zugänglich gemacht.

Alle von RISM produzierten bibliographischen und musikalischen Daten sind öffentlich und können kostenlos (wieder)verwendet werden. In der Regel sind auch die Digitalisierungen von Quellen frei zugänglich. Das RISM Digital Center verwaltet die riesigen Datenmengen, die das RISM weltweit produziert, nach den [FAIR-Prinzipien](https://www.go-fair.org/fair-principles/) für die wissenschaftliche Datenverwaltung: auffindbar (Findable), zugänglich (Accessible), interoperabel (Interoperable) und wiederverwendbar (Reusable). Dies qualifiziert das RISM zur Registrierung in [re3data](http://re3data.org/repository/r3d100013190), einer internationalen Referenzliste für offene Datenrepositorien.

Der gesamte Computercode des RISM Digital Center wird über öffentlich zugängliche Git-Repositorien verwaltet, die auf [GitHub](https://github.com/rism-digital) gehostet werden. Dies impliziert eine vollständige Darstellung und Kennzeichnung des Quellcodes. Die Git-Repositorien verwenden Continuous Integration (CI)-Systeme (z.B. Travis), um die Software automatisch zu erstellen und zu testen, sobald Änderungen am Code vorgenommen werden.