import 'package:flutter/material.dart';
import 'widgets/contador_mana.dart';

// Pantalla del laboratorio
class LaboratorioScreen extends StatelessWidget {
  const LaboratorioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ContadorMana(),
    );
  }
}
