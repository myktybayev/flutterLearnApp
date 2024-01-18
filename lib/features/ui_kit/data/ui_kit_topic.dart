class UIKitTopic {
  final int count;
  final String topic;
  final String theory;

  UIKitTopic({
    required this.count,
    required this.topic,
    required this.theory,
  });
}

List<UIKitTopic> uiKitsTopicList = [
  UIKitTopic(
      count: 1,
      topic: "Что это?",
      theory:
          '''CustomScrollView в Flutter представляет собой виджет, который предоставляет мощные возможности для создания пользовательских списков с прокруткой. Этот виджет позволяет создавать сложные макеты, используя слои (slivers), что делает его очень гибким инструментом для создания различных типов списков и визуальных компонентов, которые могут быть прокручены.

CustomScrollView состоит из одного или нескольких слоев (slivers), таких как SliverAppBar, SliverList, SliverGrid, SliverPersistentHeader, и других, которые предоставляют гибкость для управления прокруткой и внешним видом содержимого.

Преимущества CustomScrollView включают:

Гибкость макета: Возможность использовать различные слои (slivers) для создания интересных макетов.
Эффективность: Эффективное использование памяти и производительности благодаря отложенной загрузке и переиспользованию элементов.
Расширяемость: Возможность создания пользовательских слоев (slivers) для удовлетворения конкретных потребностей при построении интерфейса приложения.
Пример использования CustomScrollView можно увидеть в создании списков с разными видами элементов, например, сетчатых сеток, заголовков, расширяемых панелей и других сложных макетов, которые можно прокручивать в приложении Flutter.'''),
  UIKitTopic(
    count: 1,
    topic: "Коды",
    theory: '''
    CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Demo'),
          ),
        ),
        SliverGrid(
            gridDelegate: const
            SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item \$index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item \$index'),
              );
            },
          ),
        ),
      ],
    )
  ''',
  ),
];
