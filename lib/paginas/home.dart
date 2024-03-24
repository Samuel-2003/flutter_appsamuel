import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aquí puedes mostrar información del perfil del usuario
            Text(
              'Bienvenido Usuario', // Puedes cambiar este texto por el nombre del usuario
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica para editar el perfil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
              child: Text('Editar Perfil'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Lógica para eliminar la cuenta
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Confirmar eliminación"),
                      content: Text("¿Estás seguro de que deseas eliminar tu cuenta?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancelar"),
                        ),
                        TextButton(
                          onPressed: () {
                            // Aquí va la lógica para eliminar la cuenta
                            Navigator.of(context).pop();
                          },
                          child: Text("Eliminar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Eliminar Cuenta'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Aquí puedes agregar campos para editar la información del perfil
            Text(
              'Formulario de Edición de Perfil',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Aquí puedes agregar campos de texto, botones, etc., para editar la información del perfil
          ],
        ),
      ),
    );
  }
}
