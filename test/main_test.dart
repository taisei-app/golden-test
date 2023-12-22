import 'package:golden_test/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'test_util.dart';

void main() {
  testGoldens(
    'Golden Test Sample',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: testableWidget(
            child: const MyHomePage(
              title: 'Golden Test',
            ),
          ),
        );

      await tester.pumpDeviceBuilder(builder);

      await screenMatchesGolden(tester, 'golden test sample');
    },
  );
}
