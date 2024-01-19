import 'package:flutter/material.dart';

class PasswordRecoveryPage extends StatefulWidget {
  const PasswordRecoveryPage({super.key});

  @override
  _PasswordRecoveryPageState createState() => _PasswordRecoveryPageState();
}

class _PasswordRecoveryPageState extends State<PasswordRecoveryPage> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Смена пароля'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Смена пароля',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Новый пароль',
                filled: true,
                fillColor: Colors.grey[200],
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Подтвердите пароль',
                filled: true,
                fillColor: Colors.grey[200],
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String newPassword = _newPasswordController.text;
                String confirmPassword = _confirmPasswordController.text;
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF4B3FBB),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                ),
                child: Text(
                  'Сменить пароль',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
