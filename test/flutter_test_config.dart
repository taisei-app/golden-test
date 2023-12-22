import 'dart:async';
import 'dart:io';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      // フォントの読み込み
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      enableRealShadows: true,
      // 出力するデバイスを指定
      defaultDevices: const [
        Device.phone,
        Device.iphone11,
      ],
      skipGoldenAssertion: () => !Platform.isMacOS,
    ),
  );
}
