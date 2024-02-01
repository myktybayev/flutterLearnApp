import 'dto_models/theory_dto.dart';

abstract class TheoryService {
  Future<List<TheoryDTO>> getTheories();
}
