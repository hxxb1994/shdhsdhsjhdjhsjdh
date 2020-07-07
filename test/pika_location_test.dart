import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pika_location/pika_location.dart';

void main() {
  const MethodChannel channel = MethodChannel('pika_location');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PikaLocation.platformVersion, '42');
  });
}
