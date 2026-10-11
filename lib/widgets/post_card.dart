import 'package:flutter/material.dart';

// Widget personalizado para las publicaciones
class PostCard extends StatefulWidget {
  final String nombre;
  final String descripcion;
  final String imagen;
  final IconData icono;

  const PostCard({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.icono,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool meGusta = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple.shade100,
                  child: Icon(widget.icono),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.nombre,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset(
              widget.imagen,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 180,
                  color: Colors.deepPurple.shade50,
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 70,
                      color: Colors.deepPurple,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(widget.descripcion),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      meGusta = !meGusta;
                    });
                  },
                  icon: Icon(
                    meGusta ? Icons.favorite : Icons.favorite_border,
                    color: meGusta ? Colors.red : Colors.grey,
                  ),
                ),
                const Text('Me gusta'),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Comentarios proximamente'),
                      ),
                    );
                  },
                  icon: const Icon(Icons.comment_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
