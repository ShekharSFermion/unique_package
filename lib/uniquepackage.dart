
import 'uniquepackage_platform_interface.dart';

class Uniquepackage {
  Future<String?> getPlatformVersion() {
    return UniquepackagePlatform.instance.getPlatformVersion();
  }
}
