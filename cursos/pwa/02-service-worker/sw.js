// self.addEventListener("fetch", event => {
//   if(event.request.url.includes("main.jpg")){
//     let resp = fetch("/img/main-patas-arriba.jpg");
//     event.respondWith(resp);
//   }
// });

self.addEventListener("fetch", event => {
  let resp = fetch(event.request)
    .then(resp => resp.ok ? resp : fetch("/img/main.jpg"))
    .catch(error => {
      console.log("error url: ", error);
    });

  event.respondWith(resp);
});