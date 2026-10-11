import 'package:flutter/material.dart';

// Widget personalizado para cada conversacion
class ChatTile extends StatelessWidget {
  final String nombre;
  final String mensaje;
  final String hora;
  final String imagen;
  final int sinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.mensaje,
    required this.hora,
    required this.imagen,
    required this.sinLeer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // Imagen del personaje
            CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage(imagen),
            ),

            const SizedBox(width: 12),

            // Nombre y ultimo mensaje
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    mensaje,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Hora y mensajes sin leer
            Column(
              children: [
                Text(
                  hora,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 8),
                if (sinLeer > 0)
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.deepPurple,
                    child: Text(
                      '$sinLeer',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
