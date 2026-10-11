import 'package:flutter/material.dart';

// Tarjeta personalizada para los personajes
class TarjetaPersonaje extends StatelessWidget {
  final String nombre;
  final String imagen;
  final Color color;

  const TarjetaPersonaje({
    super.key,
    required this.nombre,
    required this.imagen,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              imagen,
              width: 160,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            nombre,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
