class TheoryList {
  String? theoryName;
  List<String>? topics;
  List<String>? topicsPharagraph;

  TheoryList({
    this.theoryName,
    this.topics,
    this.topicsPharagraph,
  });

  TheoryList.fromJson(Map<String, dynamic> json) {
    theoryName = json['theory_name'];
    topics = List<String>.from(json['topics'] ?? []);
    topicsPharagraph = List<String>.from(json['topics_pharagraph'] ?? []);
  }

  Map<String, dynamic> toJson() {
    return {
      'theory_name': theoryName,
      'topics': topics,
      'topics_pharagraph': topicsPharagraph,
    };
  }
}
