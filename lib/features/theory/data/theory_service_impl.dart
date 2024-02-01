import 'package:flutter_learn_app/features/theory/data/theory_repo.dart';

import 'dto_models/theory_dto.dart';
import 'theory_service.dart';

class TheoryServiceImpl implements TheoryService {
  final TheoryRepository _repository;

  TheoryServiceImpl(this._repository);

  @override
  Future<List<TheoryDTO>> getTheories() {
    return _repository.fetchTheories();
  }
}
