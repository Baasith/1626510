
    function initMap() {
             var uluru = {lat: 4.5353, lng: 114.7277 };
             var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15   ,
                 center: uluru
             });
             var marker = new google.maps.Marker({
        position: uluru,
                 map: map
             });
         }