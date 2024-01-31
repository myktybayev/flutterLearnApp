import 'package:json_annotation/json_annotation.dart';

part 'theory_dto.g.dart';

@JsonSerializable()
class TheoryDTO {
  final String id;
  final String title;
  final String description;

  TheoryDTO({required this.id, required this.title, required this.description});

  factory TheoryDTO.fromJson(Map<String, dynamic> json) =>
      _$TheoryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TheoryDTOToJson(this);
}
