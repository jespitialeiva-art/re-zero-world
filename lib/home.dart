import 'package:flutter/material.dart';

import 'widgets/post_card.dart';
import 'widgets/banner_rezero.dart';
import 'widgets/tarjeta_personaje.dart';

// Pantalla principal de Re:Zero World
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        // Titulo de bienvenida
        const Text(
          'Bienvenido a Re:Zero World',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),

        const SizedBox(height: 15),

        // Banner personalizado
        const BannerReZero(),

        const SizedBox(height: 20),

        // Titulo de publicaciones
        const Text(
          'Publicaciones',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        // Primera publicacion: Subaru
        const PostCard(
          nombre: 'Subaru Natsuki',
          descripcion: '¡Nunca me rendire!',
          imagen: 'assets/images/subaru.png',
          icono: Icons.person,
        ),

        // Segunda publicacion: Emilia
        const PostCard(
          nombre: 'Emilia',
          descripcion: 'Un nuevo dia en Lugunica.',
          imagen: 'assets/images/emilia.png',
          icono: Icons.auto_awesome,
        ),

        const SizedBox(height: 20),

        // Titulo del carrusel
        const Text(
          'Personajes favoritos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        // Carrusel horizontal de personajes
        SizedBox(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              TarjetaPersonaje(
                nombre: 'Rem',
                imagen: 'assets/images/rem.png',
                color: Colors.blue,
              ),
              TarjetaPersonaje(
                nombre: 'Ram',
                imagen: 'assets/images/ram.png',
                color: Colors.pink,
              ),
              TarjetaPersonaje(
                nombre: 'Beatrice',
                imagen: 'assets/images/beatrice.png',
                color: Colors.amber,
              ),
              TarjetaPersonaje(
                nombre: 'Emilia',
                imagen: 'assets/images/emilia.png',
                color: Colors.purple,
              ),
              TarjetaPersonaje(
                nombre: 'Subaru',
                imagen: 'assets/images/subaru.png',
                color: Colors.orange,
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
