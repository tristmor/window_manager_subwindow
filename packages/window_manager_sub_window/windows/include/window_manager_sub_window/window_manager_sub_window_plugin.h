#ifndef FLUTTER_PLUGIN_WINDOW_MANAGER_SUB_WINDOW_PLUGIN_H_
#define FLUTTER_PLUGIN_WINDOW_MANAGER_SUB_WINDOW_PLUGIN_H_

#include <windows.h>

#include <flutter_plugin_registrar.h>

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FLUTTER_PLUGIN_EXPORT __declspec(dllimport)
#endif

#if defined(__cplusplus)
extern "C" {
#endif

FLUTTER_PLUGIN_EXPORT void WindowManagerSubWindowPluginRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar);

#if defined(__cplusplus)
}  // extern "C"
#endif

#endif  // FLUTTER_PLUGIN_WINDOW_MANAGER_SUB_WINDOW_PLUGIN_H_
