# window_manager_sub_window_platform_interface

[![pub version][pub-image]][pub-url]

[pub-image]: https://img.shields.io/pub/v/window_manager_sub_window_platform_interface.svg
[pub-url]: https://pub.dev/packages/window_manager_sub_window_platform_interface

A common platform interface for the [window_manager_sub_window](https://pub.dev/packages/window_manager_sub_window) plugin.

## Usage

To implement a new platform-specific implementation of window_manager_sub_window, extend `WindowManagerSubWindowPlatform` with an implementation that performs the platform-specific behavior, and when you register your plugin, set the default `WindowManagerSubWindowPlatform` by calling `WindowManagerSubWindowPlatform.instance = MyPlatformWindowManagerSubWindow()`.

## License

[MIT](./LICENSE)
