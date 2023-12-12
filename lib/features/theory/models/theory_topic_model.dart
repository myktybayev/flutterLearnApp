class TheoryTopic {
  String theory_name;
  String topics;
  String topics_pharagraph;

  TheoryTopic({
    required this.theory_name,
    required this.topics,
    required this.topics_pharagraph,
  });

  // TheoryTopic.fromJson(Map<String, dynamic> json, this.theory_name, this.topics,
  //     this.topics_pharagraph) {
  //   theory_name = json["theory_name"];
  //   topics = json["topics"];
  //   topics_pharagraph = json["topics_pharagraph"];
  // }
}

List<TheoryTopic> theoryTopicList = [
  TheoryTopic(
      theory_name: "1",
      topics: "Введение",
      topics_pharagraph:
          "Flutter - это открытый исходный код фреймворк для создания мобильных, веб- и настольных приложений из одного кода. Он использует язык программирования Dart и предоставляет множество готовых виджетов для построения пользовательского интерфейса."),
  TheoryTopic(
      theory_name: "1",
      topics: "Padding",
      topics_pharagraph:
          "В Flutter виджет Padding используется для добавления отступов вокруг дочерних виджетов. Это помогает управлять пространством между элементами в пользовательском интерфейсе."),
  TheoryTopic(
      theory_name: "1",
      topics: "Align и Center",
      topics_pharagraph:
          "Align используется для выравнивания дочерних виджетов в родительском контейнере. Center является специализированным виджетом, выравнивающим своего единственного ребенка по центру родительского контейнера."),
  TheoryTopic(
      theory_name: "1",
      topics: "Container",
      topics_pharagraph:
          "Container - это базовый виджет, который объединяет в себе множество стилевых и композиционных свойств. Он может содержать другие виджеты и предоставляет управление размерами, позицией и декорацией."),
  TheoryTopic(
      theory_name: "1",
      topics: "Row и Column",
      topics_pharagraph:
          "Row и Column - это виджеты, предназначенные для организации дочерних элементов в строку (горизонтально) или столбец (вертикально) соответственно."),
  TheoryTopic(
      theory_name: "1",
      topics: "Expanded",
      topics_pharagraph:
          "Expanded используется внутри Row или Column и занимает все доступное пространство в направлении родительского виджета (горизонтально в Row и вертикально в Column)."),
  TheoryTopic(
      theory_name: "1",
      topics: "Stack",
      topics_pharagraph:
          "Stack используется для размещения дочерних виджетов друг над другом. Каждый виджет в Stack может быть размещен в определенном порядке и позиции."),
];
