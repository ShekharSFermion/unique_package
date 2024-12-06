import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'uniquepackage_method_channel.dart';

abstract class UniquepackagePlatform extends PlatformInterface {
  /// Constructs a UniquepackagePlatform.
  UniquepackagePlatform() : super(token: _token);

  static final Object _token = Object();

  static UniquepackagePlatform _instance = MethodChannelUniquepackage();

  /// The default instance of [UniquepackagePlatform] to use.
  ///
  /// Defaults to [MethodChannelUniquepackage].
  static UniquepackagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UniquepackagePlatform] when
  /// they register themselves.
  static set instance(UniquepackagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
