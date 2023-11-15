import 'package:flutter/material.dart';
import 'create_question.dart'; // Asegúrate de importar el archivo create_question.dart

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Preguntas:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Agrega la lógica para mostrar las preguntas o el mensaje de "No hay preguntas"
        ],
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
            // No es necesario hacer nada aquí, ya estamos en la pantalla de Preguntas
          } else if (index == 1) {
            // Navegar a la pantalla de Asesorías cuando se selecciona "Asesorías"
            // Agrega el código necesario para la pantalla de Asesorías si es necesario
          } else if (index == 2) {
            // Navegar a la pantalla de Tu Información cuando se selecciona "Tu Información"
            // Agrega el código necesario para la pantalla de Tu Información si es necesario
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar a la pantalla CreateQuestion cuando se presiona el botón flotante
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateQuestion()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
