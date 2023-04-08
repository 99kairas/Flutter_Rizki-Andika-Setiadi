import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:project/soal_section15/pages/contact_page.dart';
import 'package:project/soal_section16/widgets/button_custom.dart';
import 'package:project/soal_section16/widgets/textfield_custom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageSection16 extends StatefulWidget {
  const LoginPageSection16({super.key});

  @override
  State<LoginPageSection16> createState() => _LoginPageSection16State();
}

class _LoginPageSection16State extends State<LoginPageSection16> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  String? _username;
  final TextEditingController _passwordController = TextEditingController();
  String? _password;
  final TextEditingController _emailController = TextEditingController();
  bool _isHidePassword = true;

  late SharedPreferences loginData;
  late bool newUser;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('login') ?? true;

    if (newUser == false) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const ContactPage(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Login Screen',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              TextfieldCustomWidget(
                prefixIcon: const Icon(Icons.person),
                controller: _usernameController,
                labelText: 'Username',
                hintText: 'Input Username',
                validator: (value) {
                  _username = value;
                  if (_username != null && _username!.length < 4) {
                    return 'Username minimal 4 karakter!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextfieldCustomWidget(
                prefixIcon: const Icon(Icons.email),
                controller: _emailController,
                labelText: 'Email',
                hintText: 'Input Email',
                validator: (email) {
                  if (email != null && !EmailValidator.validate(email)) {
                    return 'Format email salah!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextfieldCustomWidget(
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    _isHidePassword = !_isHidePassword;
                    setState(() {});
                  },
                  icon: _isHidePassword
                      ? const Icon(Icons.lock)
                      : const Icon(Icons.lock_open),
                ),
                controller: _passwordController,
                obscureText: _isHidePassword,
                labelText: 'Password',
                hintText: 'Input Password',
                validator: (value) {
                  _password = value;
                  if (_password != null && _password!.length < 5) {
                    return 'Password minimal 5 karakter!';
                  } else if (_password![0] != _password![0].toUpperCase()) {
                    return 'Password harus diawali kapital!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10),
              ButtonCustomWidget(
                onPressed: () {
                  final isValidForm = formKey.currentState!.validate();

                  String username = _usernameController.text;
                  String email = _emailController.text;
                  if (isValidForm) {
                    loginData.setBool('login', false);
                    loginData.setString('username', username);
                    loginData.setString('email', email);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactPage(),
                        ),
                        (route) => false);
                  }
                },
                widget: const Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
