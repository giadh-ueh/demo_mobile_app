import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_app1/main.dart';

void main() {
  testWidgets('home page displays reference sections', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(432, 960);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Xin chào, Đinh Hoàng Gia'), findsOneWidget);
    expect(find.text('Lịch hôm nay:'), findsOneWidget);
    expect(find.text('Chức năng'), findsOneWidget);
    expect(find.text('Thông báo'), findsWidgets);
    expect(find.text('Lịch công tác'), findsWidgets);
    expect(find.text('Cá nhân'), findsOneWidget);

    await tester.tap(find.text('Cá nhân'));
    await tester.pump();
    expect(find.text('Cá nhân'), findsOneWidget);
    expect(
      tester.widget<Icon>(find.byIcon(Icons.person_outline)).color,
      const Color(0xFFB52C35),
    );
  });
}
