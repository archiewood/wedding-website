---
title: Photos
---

<br>


{% assign image_files = site.static_files | where: "pro-photos", true %}

<div class="grid">
    {% for myimage in image_files %}
        <a class="img-link" href="{{ myimage.path }}" target="_blank">
            <img src="{{ myimage.path }}" alt="{{ myimage.name }}" loading="lazy"/>
        </a>
    {% endfor %}
</div>

<style>
    .grid {
        display: flex;
        flex-wrap: wrap;
    }

    a.img-link {
        background: #EC985A;
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


@media (max-width: 760px) {

    a.img-link {
        height: 200px;
    }
    img { 
        height: 200px;
    }


@media (max-width: 480px) {

    a.img-link {
        height: 140px;
    }
    img { 
        height: 140px;
    }
}
</style>