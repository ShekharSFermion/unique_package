import 'package:flutter_test/flutter_test.dart';
import 'package:uniquepackage/uniquepackage.dart';
import 'package:uniquepackage/uniquepackage_platform_interface.dart';
import 'package:uniquepackage/uniquepackage_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUniquepackagePlatform
    with MockPlatformInterfaceMixin
    implements UniquepackagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UniquepackagePlatform initialPlatform = UniquepackagePlatform.instance;

  test('$MethodChannelUniquepackage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUniquepackage>());
  });

  test('getPlatformVersion', () async {
    Uniquepackage uniquepackagePlugin = Uniquepackage();
    MockUniquepackagePlatform fakePlatform = MockUniquepackagePlatform();
    UniquepackagePlatform.instance = fakePlatform;

    expect(await uniquepackagePlugin.getPlatformVersion(), '42');
  });
}
