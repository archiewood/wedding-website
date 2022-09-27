---
title: Photos
---



<p class="center">
If you use Google Photos, the album is also available <a href="https://photos.app.goo.gl/tpW4aTNnZh2Tfs2q7">here</a>.
</p>

<p class="center">
Photos taken by guests are <a href="https://photos.app.goo.gl/YXQ8ChfeCS8cYAFZ7">here</a>.
</p>


<p class="right">
<a class="download-icon" href="../assets/images/pro-photos/Archie_Anna_Wedding_All_Photos.zip">
    <span>Download All Photos</span>
    <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="#000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 15v4c0 1.1.9 2 2 2h14a2 2 0 0 0 2-2v-4M17 9l-5 5-5-5M12 12.8V2.5"></path></svg>
</a>
</p>


{% assign sections = "getting-ready, ceremony, cocktail, dinner, together, dancing" | split: ", " %}
{% for section in sections %}
## {{ section | capitalize | replace: "-", " " }}

<br>
{% assign section-images = site.static_files | where: section, true %}
<div class="grid" id="gallery-container">
{% for image in section-images %}

{% assign width = image.path | remove_first: "/" | image_size: 'w' %}
{% assign height = image.path | remove_first: "/" | image_size: 'h' %}

<a class="img-link" href="{{ image.path }}" target="_blank" style="width:{{ width | times: 200.0 |divided_by: height}}px; flex-grow:{{ width | times: 200.0 |divided_by: height}}">

<div class="i" style="padding-bottom:{{ height | times: 100.0 | divided_by: width}}%"></div>
<img src="{{ image.path }}" alt="{{ image.name }}" loading="lazy" >
</a>
{% endfor %}
</div>
{% endfor %}


<style>
    .grid {
        display: flex;
        flex-wrap: wrap;
    }

    .grid::after {
        content: '';
        flex-grow: 999999999;
    }

    a.img-link {
        background:  #e6e6e6;
        margin: 0.2em;
        position: relative;
    }


    img { 
        position: absolute;
        top: 0;
        width: 100%;
        vertical-align: bottom;
    }
    

    article.content {
        width: 100% !important;
    }

    p.center {
    text-align: center !important;
    }

    p.right {
    text-align: right !important;
    } 

    div.i {
        display: block;
    }

    a {
        color: #384743 !important;
        text-decoration: none !important;
    }

</style>