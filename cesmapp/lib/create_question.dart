import 'package:flutter/material.dart';

class CreateQuestion extends StatelessWidget {
  // Lista de materias para el ComboBox (puedes personalizarla según tus necesidades)
  final List<String> materias = ['Calculo', 'Ingenieria de Software', 'Programacion Avanzada', 'Programacion Orientada a Objetos'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Pregunta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Crear pregunta:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Selecciona la materia:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            // ComboBox para las materias
            DropdownButton<String>(
              value: materias[0], // Valor predeterminado
              items: materias.map((String materia) {
                return DropdownMenuItem<String>(
                  value: materia,
                  child: Text(materia),
                );
              }).toList(),
              onChanged: (String ) {
                // Implementa la lógica cuando se selecciona una materia
                // Puedes almacenar el valor seleccionado en una variable o realizar otras acciones necesarias
              },
            ),
            // Agrega tus widgets de formulario adicionales aquí
          ],
        ),
      ),
    );
  }
}
