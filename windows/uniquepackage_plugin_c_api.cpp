#include "include/uniquepackage/uniquepackage_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "uniquepackage_plugin.h"

void UniquepackagePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  uniquepackage::UniquepackagePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
