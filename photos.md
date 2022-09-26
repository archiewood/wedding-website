---
title: Photos
---

If you use Google Photos, the album is also available [here](https://photos.app.goo.gl/tpW4aTNnZh2Tfs2q7)

Photos taken by guests are [here](https://photos.app.goo.gl/YXQ8ChfeCS8cYAFZ7).

<!-- Button to download all photos
<a href="https://photos.app.goo.gl/tpW4aTNnZh2Tfs2q7" class="button">Download All Photos</a> -->

<img src={{"assets/images/pro-photos/getting-ready/01_getting_ready_005.jpg"}}
     width="{{"assets/images/pro-photos/getting-ready/01_getting_ready_005.jpg" | image_size: 'w'}}"
     height="{{"assets/images/pro-photos/getting-ready/01_getting_ready_005.jpg" | image_size: 'h'}}"/>



{% assign sections = "getting-ready, ceremony, cocktail, dinner, together, dancing" | split: ", " %}
{% for section in sections %}
<br>
## {{ section | capitalize | replace: "-", " " }}

<br>
{% assign section-images = site.static_files | where: section, true %}
<div class="grid">
{% for image in section-images %}
<a class="img-link" href="{{ image.path }}" target="_blank">
<img src="{{ image.path }}" alt="{{ image.name }}" loading="lazy">
</a>
{% endfor %}
</div>
{% endfor %}


<style>
    .grid {
        display: flex;
        flex-wrap: wrap;
    }

    a.img-link {
        background:  #e6e6e6;
        margin: 0 0.5rem 0.5rem 0;
        flex-grow: 1;
        object-fit: cover;
        height: 300px;
        min-width: 100px
    }


    img { 
        height: 300px;
        max-width: 100%;
        min-width: 100%;
        object-fit: cover;
    }
    

    article.content {
        width: 100% !important;
    }

    p {
    text-align: center !important;
    }


@media (max-width: 760px) {

    a.img-link {
        height: 200px;
    }
    img { 
        height: 200px;
    }


@media (max-width: 480px) {

    a.img-link {
        height: 160px;
    }
    img { 
        height: 160px;
    }
}


</style>