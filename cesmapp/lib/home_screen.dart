import 'package:flutter/material.dart';
import 'question_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(''),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¡Bienvenido!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Preguntas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Asesorías',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tu Información',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          // Handle bottom navigation bar taps
          if (index == 0) {
            // Navegar a la pantalla de Preguntas cuando se selecciona "Preguntas"
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionScreen()),
            );
          } else if (index == 1) {
            // Navegar a la pantalla de Asesorías cuando se selecciona "Asesorías"
            // Agrega el código necesario para la pantalla de Asesorías si es necesario
          } else if (index == 2) {
            // Navegar a la pantalla de Tu Información cuando se selecciona "Tu Información"
            // Agrega el código necesario para la pantalla de Tu Información si es necesario
          }
        },
      ),
    );
  }
}
