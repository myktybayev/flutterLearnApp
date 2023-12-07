class TheoryList {
  final String theoryTopic;

  TheoryList({
    required this.theoryTopic,
  });
}

List<TheoryList> theoriesList = [
  TheoryList(theoryTopic: "Введение"),
  TheoryList(theoryTopic: "Основы"),
  TheoryList(theoryTopic: "Основы компоновки UI"),
  TheoryList(theoryTopic: "Работа с Null Safety (Dart)"),
  TheoryList(theoryTopic: "Навигация и передача данных"),
  TheoryList(theoryTopic: "Взаимодействие с пользователем"),
  TheoryList(theoryTopic: "Пакеты и зависимости"),
  TheoryList(theoryTopic: "Работа с сетью"),
  TheoryList(theoryTopic: "Управление состоянием"),
  TheoryList(theoryTopic: "Хранение данных на устройстве"),
  TheoryList(theoryTopic: "Практика. Погодное приложение"),
  TheoryList(theoryTopic: "BLoC"),
  TheoryList(theoryTopic: "Чистая Архитектура (The Clean Architecture)"),
  TheoryList(theoryTopic: "Работа с Веб-страницами"),
  TheoryList(theoryTopic: "Генерация кода"),
  TheoryList(theoryTopic: "Ключи"),
  TheoryList(theoryTopic: "Основы тестирования"),
  TheoryList(theoryTopic: "Анимация (в разработке)"),
  TheoryList(theoryTopic: "Общий блок по видео"),
];

// ============================================================

class TheoryPro {
  String? theoryName;
  List<String>? topics;
  List<String>? topicsPharagraph;

  TheoryPro({this.theoryName, this.topics, this.topicsPharagraph});

  TheoryPro.fromJson(Map<String, dynamic> json) {
    theoryName = json['theory_name'];
    topics = json['topics'].cast<String>();
    topicsPharagraph = json['topics_pharagraph'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['theory_name'] = this.theoryName;
    data['topics'] = this.topics;
    data['topics_pharagraph'] = this.topicsPharagraph;
    return data;
  }
}
