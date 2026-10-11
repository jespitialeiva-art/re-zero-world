import 'package:flutter/material.dart';

// Widget personalizado del banner
class BannerReZero extends StatelessWidget {
  const BannerReZero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.auto_awesome,
            size: 45,
            color: Colors.deepPurple,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mundo de Re:Zero',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Explora personajes y comparte aventuras.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
