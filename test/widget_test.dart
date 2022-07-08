import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'package:mc_code_cats_login/main.dart';

void main() {
  group(
    'Cats login tests',
    () {
      testWidgets('Widget test', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: CatsLogin()));
        expect(find.text('Continue with Facebook'), findsOneWidget,
            reason: 'Cannot find valid Facebook button');
        expect(find.text('Continue with Google'), findsOneWidget,
            reason: 'Cannot find valid Google button');
        expect(find.text('Continue with Apple'), findsOneWidget,
            reason: 'Cannot find valid Apple button');
        expect(find.byType(Card), findsNWidgets(3),
            reason: 'Cannot find valid Apple button');
        expect(find.byType(Image), findsNWidgets(4),
            reason: 'Cannot find valid Apple button');
      });

      testGoldens('Golden test', (tester) async {
        final builder = DeviceBuilder()
          ..overrideDevicesForAllScenarios(devices: [
            Device.iphone11,
          ])
          ..addScenario(
            widget: const CatsLogin(),
          );
        await tester.pumpDeviceBuilder(builder);
        await screenMatchesGolden(tester, 'cats_login_test');
      });
    },
  );
}
