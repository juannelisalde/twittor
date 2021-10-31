if( navigator.serviceWorker ) {
    navigator.serviceWorker.register('/sw.js');
}

if( window.caches ) {
    // caches.open("prueba-1").then(cache=>{
    //     cache.addAll([
    //         "/index.html",
    //         "/js/app.js",
    //         "/css/style.css",
    //     ]);
    // });
}