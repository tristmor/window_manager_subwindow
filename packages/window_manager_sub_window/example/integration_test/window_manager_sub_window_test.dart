import 'dart:io';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:window_manager_sub_window/window_manager_sub_window.dart';

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  await windowManagerSubWindow.ensureInitialized();
  await windowManagerSubWindow.waitUntilReadyToShow(
    const WindowOptions(
      size: Size(640, 480),
      title: 'window_manager_sub_window_test',
    ),
    () async {
      await windowManagerSubWindow.show();
      await windowManagerSubWindow.focus();
    },
  );

  testWidgets('getBounds', (tester) async {
    expect(
      await windowManagerSubWindow.getBounds(),
      isA<Rect>().having((r) => r.size, 'size', const Size(640, 480)),
    );
  });

  testWidgets(
    'isAlwaysOnBottom',
    (tester) async {
      expect(await windowManagerSubWindow.isAlwaysOnBottom(), isFalse);
    },
    skip: Platform.isMacOS || Platform.isWindows,
  );

  testWidgets('isAlwaysOnTop', (tester) async {
    expect(await windowManagerSubWindow.isAlwaysOnTop(), isFalse);
  });

  testWidgets('isClosable', (tester) async {
    expect(await windowManagerSubWindow.isClosable(), isTrue);
  });

  testWidgets('isFocused', (tester) async {
    expect(await windowManagerSubWindow.isFocused(), isTrue);
  });

  testWidgets('isFullScreen', (tester) async {
    expect(await windowManagerSubWindow.isFullScreen(), isFalse);
  });

  testWidgets(
    'hasShadow',
    (tester) async {
      expect(await windowManagerSubWindow.hasShadow(), isTrue);
    },
    skip: Platform.isLinux,
  );

  testWidgets('isMaximizable', (tester) async {
    expect(await windowManagerSubWindow.isMaximizable(), isTrue);
  });

  testWidgets('isMaximized', (tester) async {
    expect(await windowManagerSubWindow.isMaximized(), isFalse);
  });

  testWidgets(
    'isMinimizable',
    (tester) async {
      expect(await windowManagerSubWindow.isMinimizable(), isTrue);
    },
    skip: Platform.isMacOS,
  );

  testWidgets('isMinimized', (tester) async {
    expect(await windowManagerSubWindow.isMinimized(), isFalse);
  });

  testWidgets(
    'isMovable',
    (tester) async {
      expect(await windowManagerSubWindow.isMovable(), isTrue);
    },
    skip: Platform.isLinux || Platform.isWindows,
  );

  testWidgets('getOpacity', (tester) async {
    expect(await windowManagerSubWindow.getOpacity(), 1.0);
  });

  testWidgets('getPosition', (tester) async {
    expect(await windowManagerSubWindow.getPosition(), isA<Offset>());
  });

  testWidgets('isPreventClose', (tester) async {
    expect(await windowManagerSubWindow.isPreventClose(), isFalse);
  });

  testWidgets('isResizable', (tester) async {
    expect(await windowManagerSubWindow.isResizable(), isTrue);
  });

  testWidgets('getSize', (tester) async {
    expect(await windowManagerSubWindow.getSize(), const Size(640, 480));
  });

  testWidgets(
    'isSkipTaskbar',
    (tester) async {
      expect(await windowManagerSubWindow.isSkipTaskbar(), isFalse);
    },
    skip: Platform.isWindows,
  );

  testWidgets('getTitle', (tester) async {
    expect(await windowManagerSubWindow.getTitle(),
        'window_manager_sub_window_test');
  });

  testWidgets('getTitleBarHeight', (tester) async {
    expect(await windowManagerSubWindow.getTitleBarHeight(), isNonNegative);
  });

  testWidgets('isVisible', (tester) async {
    expect(await windowManagerSubWindow.isVisible(), isTrue);
  });
}
