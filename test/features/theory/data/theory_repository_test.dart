import 'package:flutter/services.dart';
import 'package:flutter_learn_app/features/theory/data/dto_models/theory_dto.dart';
import 'package:flutter_learn_app/features/theory/data/theory_repo.dart';
import 'package:flutter_learn_app/features/theory/data/theory_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theory_repository_test.mocks.dart';

@GenerateMocks([AssetBundle])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAssetBundle mockRootBundle;
  late TheoryRepository repository;

  setUp(() {
    mockRootBundle = MockAssetBundle();

    repository = TheoryRepositoryImpl(bundle: mockRootBundle);
  });

  group('TheoryRepositoryImpl', () {
    test('fetchTheories returns a list of TheoryDTO on successful data fetch',
        () async {
      when(mockRootBundle.loadString('json/theories_topic.json')).thenAnswer(
          (_) async =>
              '{"items":[{"id": "1", "title": "Theory 1", "description": "Description 1"}]}');

      var result = await repository.fetchTheories();

      expect(result, isA<List<TheoryDTO>>());
      expect(result.length, 1);
      expect(result.first.title, 'Theory 1');
    });

    test('fetchTheories throws an exception when data fetch fails', () {
      when(mockRootBundle.loadString('json/theories_topic.json'))
          .thenThrow(Exception('Failed to load theories'));

      expect(repository.fetchTheories(), throwsException);
    });
  });
}
