import 'dto_models/theory_dto.dart';

abstract class TheoryRepository {
  Future<List<TheoryDTO>> fetchTheories();
}
