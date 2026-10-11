import 'package:flutter/material.dart';
import 'widgets/chat_tile.dart';

// Pantalla de conversaciones
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          nombre: 'Subaru Natsuki',
          mensaje: '¡Tenemos que salvar a Emilia!',
          hora: '10:30',
          imagen: 'assets/images/subaru.png',
          sinLeer: 2,
        ),
        ChatTile(
          nombre: 'Emilia',
          mensaje: '¿Nos vemos en la mansion?',
          hora: '09:45',
          imagen: 'assets/images/emilia.png',
          sinLeer: 1,
        ),
        ChatTile(
          nombre: 'Rem',
          mensaje: 'Siempre puedes contar conmigo.',
          hora: 'Ayer',
          imagen: 'assets/images/rem.png',
          sinLeer: 3,
        ),
        ChatTile(
          nombre: 'Ram',
          mensaje: 'Barusu, deja de perder el tiempo.',
          hora: 'Ayer',
          imagen: 'assets/images/ram.png',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Beatrice',
          mensaje: 'No me molestes, supongo.',
          hora: 'Lunes',
          imagen: 'assets/images/beatrice.png',
          sinLeer: 0,
        ),
      ],
    );
  }
}
