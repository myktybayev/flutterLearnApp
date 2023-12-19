class TheoryList {
  String? theory_name;
  List<String>? topics;
  List<String>? topics_pharagraph;

  TheoryList({
    this.theory_name,
    this.topics,
    this.topics_pharagraph,
  });

  TheoryList.fromJson(Map<String, dynamic> json) {
    theory_name = json['theory_name'];
    topics = List<String>.from(json['topics'] ?? []);
    topics_pharagraph = List<String>.from(json['topics_paragraph'] ?? []);
  }

  Map<String, dynamic> toJson() {
    return {
      'theory_name': theory_name,
      'topics': topics,
      'topics_pharagraph': topics_pharagraph,
    };
  }
}
