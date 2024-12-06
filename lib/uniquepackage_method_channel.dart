import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'uniquepackage_platform_interface.dart';

/// An implementation of [UniquepackagePlatform] that uses method channels.
class MethodChannelUniquepackage extends UniquepackagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('uniquepackage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
