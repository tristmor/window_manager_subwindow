//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <screen_retriever_linux/screen_retriever_linux_plugin.h>
#include <tray_manager/tray_manager_plugin.h>
#include <window_manager_sub_window/window_manager_sub_window_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) screen_retriever_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ScreenRetrieverLinuxPlugin");
  screen_retriever_linux_plugin_register_with_registrar(screen_retriever_linux_registrar);
  g_autoptr(FlPluginRegistrar) tray_manager_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TrayManagerPlugin");
  tray_manager_plugin_register_with_registrar(tray_manager_registrar);
  g_autoptr(FlPluginRegistrar) window_manager_sub_window_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WindowManagerSubWindowPlugin");
  window_manager_sub_window_plugin_register_with_registrar(window_manager_sub_window_registrar);
}