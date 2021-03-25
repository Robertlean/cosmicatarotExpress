window.onload = function geoFindMe(){
    var output = document.getElementById("out");
    console.log(output)

    if (!navigator.geolocation){
        output.innerHTML = "<p>Gelocation no es soportado</p>";
        return;
    }
    function success(position){
        var lat = position.coords.latitude;
        var lon = position.coords.longitude;

        console.log('latitud '+lat+' y longitud '+lon)
        output.innerHTML='<p>latitud '+lat+' y longitud '+lon+'</p>'

        var img = new Image();
        img.src = "http://maps.googleapis.com/maps/api/staticmap?center="+lat+","+lon+"&zoom=13&size=300x300&sensor=false";
        output.appendChild(img)
    }

    function error(){
        output.innerHTML = "No se encontro su ubicacion"
    }
    output.innerHTML = "<p>Buscando ubicación...</p>";
    navigator.geolocation.getCurrentPosition(success,error)
}