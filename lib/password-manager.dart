import 'package:flutter/material.dart';

import 'package:purva/home_page.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({super.key});

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager> {
  var _hidePassword = true;
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Enter Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blueGrey[100]!.withOpacity(0.5),
                  hintText: 'Password..',
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _hidePassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _hidePassword = !_hidePassword;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a password';
                  }
                  if (value != 'test@78563') {
                    return 'Invalid Password';
                  }
                  return null;
                },
                obscureText: _hidePassword,
                controller: _passwordController,
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text('Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 246, 57, 57))),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 246, 57, 57),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(80, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid) return;
                  _formKey.currentState!.save();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomePage()));
                },
                child: const Text('Verify Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
