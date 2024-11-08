import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:window_manager_sub_window/window_manager_sub_window.dart';

void main() {
  const MethodChannel channel = MethodChannel('window_manager_sub_window');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      null,
    );
  });
}
