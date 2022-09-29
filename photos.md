---
title: Photos
---
<link type="text/css" rel="stylesheet" href="../assets/css/lightgallery.css?rnd=2" />
<link type="text/css" rel="stylesheet" href="../assets/css/lg-zoom.css" />
<script src="../assets/js/lightgallery.min.js"></script>
<script src="../assets/js/lg-zoom.min.js"></script>




<p class="center">
If you use Google Photos, the album is also available <a href="https://photos.app.goo.gl/scesL5azBWUHZDKv8">here</a>, (where you can also download the whole album).
</p>

<p class="center">
Photos taken by guests are <a href="https://photos.app.goo.gl/YXQ8ChfeCS8cYAFZ7" target="_blank">here</a>, as well as an <a href="https://clipchamp.com/watch/wHe7QrdHh4L" target="_blank">excellent video</a> from Adam R's drone.
</p>
<div id="gallery-container">
{% assign sections = "getting-ready, ceremony, cocktail, dinner, together, dancing" | split: ", " %}
{% for section in sections %}
<h2> {{ section | capitalize | replace: "-", " " }} </h2>   
{% assign section-images = site.static_files | where: "pro-photos", true | where: section, true %}
<div class="grid">
{% for image in section-images %}

{% assign high_res_path = image.path | replace: "pro-photos", "high-res" %}
{% assign width = image.path | remove_first: "/" | image_size: 'w' %}
{% assign height = image.path | remove_first: "/" | image_size: 'h' %}

<div class="img-container" data-src="{{ high_res_path }}" style="width:{{ width | times: 200.0 |divided_by: height}}px; flex-grow:{{ width | times: 200.0 |divided_by: height}}">
    <a class="img-link" data-src="{{ high_res_path }}" href="{{ high_res_path }}" target="_blank" >
        <div class="i" style="padding-bottom:{{ height | times: 100.0 | divided_by: width}}%"></div>
        <img src="{{ image.path }}" data-src="{{ high_res_path }}" loading="lazy" >
    </a>
    <a class="download-icon-single" href="{{ high_res_path }}" download>
        <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="#d3d3d3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 15v4c0 1.1.9 2 2 2h14a2 2 0 0 0 2-2v-4M17 9l-5 5-5-5M12 12.8V2.5"></path></svg>
    </a>
</div>

{% endfor %}
</div>
{% endfor %}
</div>

<style>
    .grid {
        display: flex;
        flex-wrap: wrap;
    }

    .grid::after {
        content: '';
        flex-grow: 999999999;
    }

    div.img-container {
        background:  #e6e6e6;
        margin: 0.1em;
        position: relative;
        display: inline-block;
    }


    img { 
        position: absolute;
        top: 0;
        width: 100%;
        vertical-align: bottom;
    }
    
    .download-icon-single {
        position: absolute;
        bottom: 0;
        right: 10px;
    }

    .download-icon-single:hover{
        transform: scale(1.2);
        transition: transform 0.2s; 
    }

    .download-icon-single:hover svg{
        stroke: #FFF;
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

    h2{
        text-transform:capitalize;
        padding-top: 1em;
        padding-bottom: 0.5em;
    }

    .lg-toolbar-next:before {
        content: "\e095";
    }
    .lg-toolbar-prev:before {
        content: "\e094";
    }

    
    
</style>


<script type="text/javascript" async="">
        var $galleryContainer = document.getElementById("gallery-container");

        const customButtons = `<button type="button" id="lg-toolbar-next" aria-label="Next slide" class="lg-toolbar-next lg-icon">  </button><button type="button" id="lg-toolbar-prev" aria-label="Previous slide" class="lg-toolbar-prev lg-icon">  </button>`;

        $galleryContainer.addEventListener("lgInit", (event) => {
        const pluginInstance = event.detail.instance;

        // Note append and find are not jQuery methods
        // These are utility methods provided by lightGallery
        const $toolbar = pluginInstance.outer.find(".lg-toolbar");
        $toolbar.append(customButtons);
        document.getElementById("lg-toolbar-next").addEventListener("click", () => {
            pluginInstance.goToNextSlide();
        });
        document.getElementById("lg-toolbar-prev").addEventListener("click", () => {
            pluginInstance.goToPrevSlide();
        });
        });

        lightGallery($galleryContainer, {
        selector: ".img-link",
        speed: 250,
        controls: false,
        counter: false,
        plugins: [lgZoom],
        licenseKey: "D9CDB7A3-526D49B8-91F61C6F-9FBCFDF6"
        });
</script>