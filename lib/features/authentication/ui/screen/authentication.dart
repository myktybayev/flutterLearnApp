import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn_app/features/authentication/ui/cubit/auth_cubit.dart';
import 'package:flutter_learn_app/features/authentication/ui/screen/password_page.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  AuthCubit get bloc => context.read<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16.0),
              const Text(
                'Добро пожаловать!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16.0),
                    TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(text: 'Вход'),
                        Tab(text: 'Регистрация'),
                      ],
                      indicatorColor: const Color(0xFF4B3FBB),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                    ),
                    const SizedBox(height: 12.0),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Пароль',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PasswordRecoveryPage()),
                                    );
                                  },
                                  child: const Text(
                                    'Забыли пароль?',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // аккаунтка киреди
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      const Color(0xFF4B3FBB),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 12.0,
                                    ),
                                    child: Text(
                                      'Войти',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              const Center(
                                child: Text(
                                  'Нажимая кнопку “Войти”, вы принимаете условия',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchPDF('https://ayala.kz/PK.pdf');
                                },
                                child: const Center(
                                  child: Text(
                                    'Политики конфиденциальности',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color(0xFF4B3FBB),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Пароль',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Подтвердите пароль',
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    _tabController.animateTo(0);
                                  },
                                  child: const Text(
                                    'Уже есть аккаунт?',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16.0),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      const Color(0xFF4B3FBB),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 12.0,
                                    ),
                                    child: Text(
                                      'Зарегистрироваться',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              const Center(
                                child: Text(
                                  'Нажимая кнопку “Зарегистрироваться”, вы принимаете условия',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _launchPDF('https://ayala.kz/PK.pdf');
                                },
                                child: const Center(
                                  child: Text(
                                    'Политики конфиденциальности',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color(0xFF4B3FBB),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchPDF(String pdfUrl) async {
    if (await canLaunch(pdfUrl)) {
      await launch(pdfUrl);
    } else {
      throw 'Не удалось открыть PDF';
    }
  }
}
