import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:window_manager_sub_window_platform_interface/src/window_manager_sub_window_platform_interface.dart';

/// An implementation of [WindowManagerSubWindowPlatform] that uses method channels.
class MethodChannelWindowManagerSubWindow
    extends WindowManagerSubWindowPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('window_manager_sub_window');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
