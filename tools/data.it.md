---
title: Data management
layout: tools-data
show_posts: false
lang: it
permalink: /tools/data.html
---

# Gestione dei dati

Il compito principale del progetto RISM è quello di creare e curare una ricca serie di dati sulle fonti musicali, con attualmente circa 1,5 milioni di record. Il formato di base utilizzato dal RISM in Muscat è [MarcXML](https://www.loc.gov/standards/marcxml//), il formato bibliografico più utilizzato. Le descrizioni delle fonti musicali nel RISM includono incipit di notazione musicale codificati, con attualmente 2,25 milioni di incipit nell'intero set di dati RISM. Gli incipit sono codificati in formato [MEI](https://music-encoding.org/). Sempre più spesso i record che descrivono una fonte sono accompagnati da immagini digitalizzate. Queste sono rese accessibili attraverso l'International Image Interoperability Framework ([IIIF](https://iiif.io/)). 

Tutti i dati bibliografici e musicali prodotti dal RISM sono pubblici e liberi di essere utilizzati e riutilizzati. Di norma, anche le digitalizzazioni delle fonti sono libere. Il RISM Digital Center gestisce l'enorme quantità di dati prodotti dal RISM in tutto il mondo, seguendo i [principi FAIR](https://www.go-fair.org/fair-principles/) per la gestione dei dati scientifici: trovabili (Findable), accessibili (Accessible), interoperabili (Interoperable) e riutilizzabili (Reusable). Questo qualifica il RISM per essere accreditato in [re3data](http://re3data.org/repository/r3d100013190), un sistema di riferimento internazionale per i repository di dati aperti. 

Tutto il codice informatico del RISM Digital Center è gestito attraverso i repository Git pubblicamente disponibili ospitati su [GitHub](https://github.com/rism-digital). Questo fornisce implicitamente la versione completa e il tagging del codice sorgente. I repository Git utilizzeranno sistemi di Integrazione Continua (CI) (ad esempio, Travis) per costruire e testare automaticamente il software ogni volta che vengono apportate modifiche al codice.
