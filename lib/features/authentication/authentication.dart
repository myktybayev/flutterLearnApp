import 'package:flutter/material.dart';
import 'package:flutter_learn_app/features/welcome/welcome.dart';

class AuthenticationPage extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  // пропускает регистрацию или вход и заходит как гость

                },
                child: Text(
                  'Пропустить',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16.0),
              Text(
                'Добро пожаловать!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Вход'),
                  Tab(text: 'Регистрация'),
                ],
                indicatorColor: Color(0xFF4B3FBB),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
              ),
              SizedBox(height: 12.0), 
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Пароль',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              // пароль востановить ету
                            },
                            child: Text(
                              'Забыли пароль?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              //аккаунтка киреди
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF4B3FBB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
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
                        SizedBox(height: 4.0),
                        Center(
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
                            // инфо про конфиденциальность
                          },
                          child: Center(
                            child: Text(
                              'Политики конфиденциальности',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xFF4B3FBB),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Пароль',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Подтвердите пароль',
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
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
                            child: Text(
                              'Уже есть аккаунт?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // аккаунт зарегистрироваться етиледи фб или дбга
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF4B3FBB),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
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
                        SizedBox(height: 4.0),
                        Center(
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
                            //басканда про политику конфиденциальности шыкса инфо
                          },
                          child: Center(
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
      ),
    );
  }
}
