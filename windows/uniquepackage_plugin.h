#ifndef FLUTTER_PLUGIN_UNIQUEPACKAGE_PLUGIN_H_
#define FLUTTER_PLUGIN_UNIQUEPACKAGE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace uniquepackage {

class UniquepackagePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  UniquepackagePlugin();

  virtual ~UniquepackagePlugin();

  // Disallow copy and assign.
  UniquepackagePlugin(const UniquepackagePlugin&) = delete;
  UniquepackagePlugin& operator=(const UniquepackagePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace uniquepackage

#endif  // FLUTTER_PLUGIN_UNIQUEPACKAGE_PLUGIN_H_
