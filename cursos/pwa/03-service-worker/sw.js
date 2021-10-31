self.addEventListener("install",  event => {
  // descarga asset y crea cache
  console.log("sw: instalando sw");
  
  const instalacion = new Promise((resolve, reject)=>{
    setTimeout(() => {
      console.log("sw: instalaciones terminadas");
    }, 1000);
    self.skipWaiting();
    resolve();
  });
  
  event.waitUntil(instalacion);
});

self.addEventListener("activate",  event => {
  // borra cache viejo
  console.log("sw: activado");
});

self.addEventListener("fetch",  event => {
  // if(event.request.url.includes("https://reqres.in/")){
  //   const resp = new Response(`{ok:false, mensaje:'jajaj'}`);
  //   event.respondWith(resp);
  // }
});

self.addEventListener("sync", event => {
  console.log("sw: recuperamos conexion", event, event.tag);
});

self.addEventListener("push", event => {
  console.log("sw: push notifications", event);
});