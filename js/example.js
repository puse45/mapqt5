
function initialize() {

    var mainWindow;
    new QWebChannel(qt.webChannelTransport, function(channel)
    {
        mainWindow = channel.objects.mainWindow;

    });
    var map;
    var myOptions = {
        center: new google.maps.LatLng(-1.28333,36.81667),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: true
    };

    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    var infoWindow = new google.maps.InfoWindow;
    $.ajax({
        type: "GET",
        url:  "http://192.168.1.36/cctv-list/",
        dataType: "json",
        success: function(data) {

            if (data.length !== 0) {
                var markers = [];
                var data = data.data;
                $.each(data, function(marker, data) {
                    var type = '';
                    var latLng = new google.maps.LatLng(data['longitude'], data['latitude']);
                    var infowincontent = document.createElement('div');
                    var name = document.createElement("span");
                    name.innerHTML = '<div class="form-group"> Name: <b>'+data['camera_name']+'</b></div><div class="form-group"><button id="cctv"  title="'+data['camera_name']+'" class="btn btn-primary btn-sm"><i class="fa fa-camera"></i> Open</button></div>';
                    infowincontent.appendChild(name);

                    // Creating a marker and putting it on the map
                    var marker = new google.maps.Marker({
                        position: latLng,
                        title: data['camera_name']
                        // label: icon.label
                    });
                    marker.addListener('click', function() {
                        infoWindow.setContent(infowincontent);
                        infoWindow.open(map, marker);

                    });
                    markers.push(marker);

                });

                var markerCluster = new MarkerClusterer(map, markers,
                    {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

                // marker.setMap(map);



            }

            $(document).on("click", "#cctv", function(){
               //do something
                var title= this.title;
                mainWindow.showLoginInfo(title);
            });
            // var markerCluster = new MarkerClusterer(map, marker,
            //     {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

        },
        error: function(data) {
            console.log('Please refresh the page and try again');
        }
    });



}


