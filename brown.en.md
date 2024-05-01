---
title: "Mayer Brown"
layout: publications
show_posts: false
lang: en
permalink: /brown.html
---

# Howard Mayer Brown in RISM

Last update: {{ site.time | date: "%-d %B %Y" }}

{% datatable brown Brown %}

<link rel="stylesheet" type="text/css" href="/js/jstable.css">
<script type="text/javascript" src="/js/jstable.min.js"></script>

<script>
    let table = document.getElementById('datatable');
    let myTable = new JSTable(table, {
        perPageSelect: [25, 50, 100],
        perPage: 50
    });
</script>