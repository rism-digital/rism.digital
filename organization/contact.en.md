---
title: "Contact"
layout: organization
show_posts: false
index_all_lang: true
lang: en
permalink: /organization/contact.html

titles:
  de: "Kontakt"
  en: "Contact"
  fr: "Contact"
  it: "Contatti"
---

<h1>
    {{ site.data.contact.title[site.active_lang] }}
</h1>

<div>
    <div class="columns is-desktop is-variable">
        <div class="column is-three-quarters-desktop">
            <p>
                {{ site.data.contact.office.address[site.active_lang] }}
                <br/><br/>
                <a href="mailto:{{ site.data.contact.office.email }}"><span class="icon"><i class="fas fa-envelope"></i></span>mailto:{{ site.data.contact.office.email }}</a>
            </p>
            <p class="person_name">
                {{ site.data.contact.office.howto[site.active_lang] }}
            </p>
            <p>
                {{ site.data.contact.office.nb[site.active_lang] }}
            </p>
        </div>
        <div class="column is-one-quarter-desktop">
            <div align="center">
                <a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Hallwylstrasse+15,+3005+Bern,+Switzerland&amp;sll=41.260946,-117.27196&amp;sspn=109.92994,270.527344&amp;ie=UTF8&amp;hq=&amp;hnear=Hallwylstrasse+15,+3005+Bern,+Switzerland&amp;ll=46.947919,7.45388&amp;spn=0.020508,0.036478&amp;z=14&amp;iwloc=A" target="_blank"><img class="map img_responsive" src="/images/rism_ch/map-small.png"></a>
            </div>
        </div>
    </div>  
    {% for g in site.data.contact.groups %}
    <h4>
        {{ g.labels[site.active_lang] }}
    </h4>
        {% for p in g.person %}
        <p class="person_name">
            {{ p.name }}
        </p>
        <p class="person_data">
            {% if p.days %}
            {{ p.days[site.active_lang] }}
            {% endif %}
            <br/>
            <a href="mailto:{{ p.email }}"><span class="icon"><i class="fas fa-envelope"></i></span>{{ p.email }}</a>
        </p>
        <p class="text">
        	<a href="#{{ p.id }}" data-action="collapse">
                <span class="icon"><i class="fas fa-plus"></i></span>
            </a>
        </p>
        <div id="{{ p.id }}" class="is-collapsible mb-3">
            <div class="columns is-desktop is-gapless">
                <div class="column is-three-quarters-desktop">
                    <p>
                        {{ p.text[site.active_lang] }}
                    </p>
                </div>
                <div class="column is-desktop ml-5">
                    {% unless p.no-photo %}
                    <img class="img-responsive" src="/images/photos/{{ p.photo }}"/>
                    {% endunless %}
                </div>
            </div>
         </div>
         <hr class="mt-0"/>

        {% endfor %}
    {% endfor %}
</div>

<script>

// Return an array of bulmaCollapsible instances (empty if no DOM node found)
const bulmaCollapsibleInstances = bulmaCollapsible.attach('.is-collapsible');

// Loop into instances
bulmaCollapsibleInstances.forEach(bulmaCollapsibleInstance => {
    // Check if current state is collapsed or not
    console.log(bulmaCollapsibleInstance.collapsed());
});

/*
$('.text').click(function () {
    next = $(this).next('div.text-content');
    next.slideToggle();
    $('> span', this).toggleClass('fa-plus fa-minus');
    
    if ( next.is(':visible') && next.is(':last-child')) {
       $("html, body").animate({scrollTop: next.offset().top});
    }
}); 
*/

</script>
