const express = require('express');
const router = express.Router();
const push = require('./push');

const mensajes = [
  {
    _id: 'XXX',
    user: 'spiderman',
    mensaje: 'Hola Mundo'
  }
];

router.get('/', function (req, res) {
  res.json( mensajes );
});

router.post('/', function (req, res) {
  const mensaje = {
    mensaje: req.body.mensaje,
    user: req.body.user
  };

  mensajes.push( mensaje );
  
  console.log("routes.js mensaje: ", mensajes);

  res.json({
    ok: true,
    mensaje
  });
});

router.get('/key', (req, res) => {
  const key = push.getKey();
  res.send(key);
});

router.post('/subscribe', (req, res) => {
  const suscripcion = req.body;
  push.addSubscription( suscripcion );
  res.json('subscribe');
});

// Envar una notificación PUSH a las personas que nosotros queramos, ES ALGO que se controla del lado del server
router.post('/push', (req, res) => {
  const post = {
    titulo: req.body.titulo,
    cuerpo: req.body.cuerpo,
    usuario: req.body.usuario
  };

  push.sendPush( post );
  res.json( post );
});

module.exports = router;