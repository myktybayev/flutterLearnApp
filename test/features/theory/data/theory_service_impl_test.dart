import 'package:flutter_learn_app/features/theory/data/dto_models/theory_dto.dart';
import 'package:flutter_learn_app/features/theory/data/theory_repo.dart';
import 'package:flutter_learn_app/features/theory/data/theory_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theory_service_impl_test.mocks.dart';

@GenerateMocks([TheoryRepository])
void main() {
  late MockTheoryRepository mockTheoryRepository;
  late TheoryServiceImpl theoryService;

  setUp(() {
    mockTheoryRepository = MockTheoryRepository();
    theoryService = TheoryServiceImpl(mockTheoryRepository);
  });

  test(
    'getTheories returns a list of TheoryDTO when repository fetches successfully',
    () async {
      when(mockTheoryRepository.fetchTheories())
          .thenAnswer((_) async => <TheoryDTO>[
                TheoryDTO(
                    id: '1', title: 'Theory 1', description: 'Description 1'),
              ]);

      final result = await theoryService.getTheories();

      expect(result, isA<List<TheoryDTO>>());
      expect(result.length, 1);
      expect(result.first.title, equals('Theory 1'));
    },
  );

  test('getTheories forwards exceptions from repository', () async {
    when(mockTheoryRepository.fetchTheories())
        .thenThrow(Exception('Failed to fetch theories'));

    // Use expectLater with async matchers to handle the Future result properly
    await expectLater(theoryService.getTheories(), throwsA(isException));
  });
}
