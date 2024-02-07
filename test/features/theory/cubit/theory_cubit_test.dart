import 'package:flutter/services.dart';
import 'package:flutter_learn_app/features/theory/ui/cubit/theory_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'theory_cubit_test.mocks.dart';

@GenerateMocks([AssetBundle])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockAssetBundle mockAssetBundle;
  late TheoryCubit theoryCubit;

  setUp(() {
    mockAssetBundle = MockAssetBundle();
    theoryCubit = TheoryCubit(assetBundle: mockAssetBundle);
  });

  group('TheoryCubit', () {
    const mockTheoryData = '''
    {
      "items": [
        {
          "theory_name": "Theory 1",
          "topics": ["Topic 1", "Topic 2"],
          "topics_pharagraph": ["Paragraph 1", "Paragraph 2"]
        }
      ]
    }
    ''';

    test('loadTheories successfully loads theories', () async {
      when(mockAssetBundle.loadString('json/theories_topic.json'))
          .thenAnswer((_) async => mockTheoryData);

      await theoryCubit.loadTheories();

      expect(theoryCubit.state.theoryList.length, 1);
      expect(theoryCubit.state.theoryList.first.theoryName, "Theory 1");
    });

    test('runFilter filters theories by keyword', () async {
      when(mockAssetBundle.loadString('json/theories_topic.json'))
          .thenAnswer((_) async => mockTheoryData);

      await theoryCubit.loadTheories();

      theoryCubit.runFilter("Theory");

      expect(theoryCubit.state.filteredTheoryList.length, 1);
      expect(theoryCubit.state.filteredTheoryList.first.theoryName,
          contains("Theory"));
    });
  });
}
