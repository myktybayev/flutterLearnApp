class theoryList {
  final String theory_topic;
  final int count_of_topics;

  theoryList({
    required this.theory_topic,
    required this.count_of_topics,
  });
}

List<theoryList> theoriesList = [
  theoryList(theory_topic: "Введение", count_of_topics: 1),
  theoryList(theory_topic: "Основы", count_of_topics: 1),
  theoryList(theory_topic: "Основы компоновки UI", count_of_topics: 1),
  theoryList(theory_topic: "Работа с Null Safety (Dart)", count_of_topics: 1),
  theoryList(theory_topic: "Навигация и передача данных", count_of_topics: 1),
  theoryList(
      theory_topic: "Взаимодействие с пользователем", count_of_topics: 1),
  theoryList(theory_topic: "Пакеты и зависимости", count_of_topics: 1),
  theoryList(theory_topic: "Работа с сетью", count_of_topics: 1),
  theoryList(theory_topic: "Управление состоянием", count_of_topics: 1),
  theoryList(theory_topic: "Хранение данных на устройстве", count_of_topics: 1),
  theoryList(theory_topic: "Практика. Погодное приложение", count_of_topics: 1),
  theoryList(theory_topic: "BLoC", count_of_topics: 1),
  theoryList(
      theory_topic: "Чистая Архитектура (The Clean Architecture)",
      count_of_topics: 1),
  theoryList(theory_topic: "Работа с Веб-страницами", count_of_topics: 1),
  theoryList(theory_topic: "Генерация кода", count_of_topics: 1),
  theoryList(theory_topic: "Ключи", count_of_topics: 1),
  theoryList(theory_topic: "Основы тестирования", count_of_topics: 1),
  theoryList(theory_topic: "Анимация (в разработке)", count_of_topics: 1),
  theoryList(theory_topic: "Общий блок по видео", count_of_topics: 1),
];
