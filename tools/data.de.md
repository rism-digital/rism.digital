---
title: Data management
layout: tools-data
show_posts: false
lang: de
permalink: /tools/data.html
---

# Data management

The core duty of the RISM project is to create and curate a rich set of data about music sources, with currently about 1.5 million records. The underlying format used by RISM in Muscat is [MarcXML](https://www.loc.gov/standards/marcxml//), the most widely used bibliographic format. Music source descriptions in RISM include encoded music notation incipits, with currently 2.25 million incipits in the full RISM dataset. Incipits are encoded in [MEI](https://music-encoding.org/) format. Increasingly, records describing a source are accompanied by digitized images. These are made accessible through the International Image Interoperability Framework ([IIIF](https://iiif.io/)). 

All bibliographical and musical data produced by RISM are public and free to use and reuse. As a rule, digitizations of sources are open too. The RISM Digital Center manages the huge quantity of data produced by the RISM worldwide, following the [FAIR principles](https://www.go-fair.org/fair-principles/) for scientific data management: Findable, Accessible, Interoperable, and Reusable. This qualifies the RISM to be registered in [re3data](http://re3data.org/repository/r3d100013190), an international reference for open data repositories. 

All the computer code of the RISM Digital Center is managed through publicly available Git repositories hosted on [GitHub](https://github.com/rism-digital). This implicitly provides full versioning and tagging of the source code. Git repositories will use Continuous Integration (CI) systems (e.g., Travis) in order to automatically build and test the software every time changes are made to the code.
