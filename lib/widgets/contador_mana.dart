import 'package:flutter/material.dart';

// Widget personalizado para controlar el mana
class ContadorMana extends StatefulWidget {
  const ContadorMana({super.key});

  @override
  State<ContadorMana> createState() => _ContadorManaState();
}

class _ContadorManaState extends State<ContadorMana> {
  // Variable que almacena el mana
  int mana = 50;

  // Funcion para aumentar el mana
  void aumentarMana() {
    setState(() {
      if (mana < 100) {
        mana = mana + 10;
      }
    });
  }

  // Funcion para disminuir el mana
  void disminuirMana() {
    setState(() {
      if (mana > 0) {
        mana = mana - 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.auto_awesome,
                size: 70,
                color: Colors.deepPurple,
              ),

              const SizedBox(height: 15),

              const Text(
                'Contador de Mana',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Controla tu energia magica',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 20),

              // Valor actual del mana
              Text(
                '$mana',
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const Text('Puntos de mana'),

              const SizedBox(height: 20),

              // Barra visual del mana
              LinearProgressIndicator(
                value: mana / 100,
                minHeight: 12,
                color: Colors.deepPurple,
                backgroundColor: Colors.deepPurple.shade100,
              ),

              const SizedBox(height: 25),

              // Botones para cambiar el valor
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: disminuirMana,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: aumentarMana,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Mensaje segun el valor del mana
              Text(
                mana == 100
                    ? '¡Mana completo!'
                    : mana == 0
                        ? 'Sin energia magica'
                        : 'Energia disponible',
                style: const TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
