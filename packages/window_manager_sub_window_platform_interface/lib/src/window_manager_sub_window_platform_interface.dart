import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:window_manager_sub_window_platform_interface/src/window_manager_sub_window_method_channel.dart';

abstract class WindowManagerSubWindowPlatform extends PlatformInterface {
  /// Constructs a WindowManagerSubWindowPlatform.
  WindowManagerSubWindowPlatform() : super(token: _token);

  static final Object _token = Object();

  static WindowManagerSubWindowPlatform _instance =
      MethodChannelWindowManagerSubWindow();

  /// The default instance of [WindowManagerSubWindowPlatform] to use.
  ///
  /// Defaults to [MethodChannelWindowManagerSubWindow].
  static WindowManagerSubWindowPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WindowManagerSubWindowPlatform] when
  /// they register themselves.
  static set instance(WindowManagerSubWindowPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
