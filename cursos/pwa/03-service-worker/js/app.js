// Detectar si podemos usar Service Workers
if ( navigator.serviceWorker ) {
  navigator.serviceWorker.register('/sw.js')
    .then(reg => {
      // setTimeout(() => {
      //   reg.sync.register("posteo-gaticos");
      //   console.log("se enviaron fotos");
      // }, 3000);
      
      Notification.requestPermission()
        .then(result => {
          console.log(result);
          reg.showNotification("mi primer notofocación");
        });
    });

}


// fetch("https://reqres.in/api/users")
//     .then(resp => resp.text())
//     .then(console.log);