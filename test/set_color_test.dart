import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:set_primary_swatch_color/set_primary_swatch_color.dart';

void main() {
  testWidgets('Test createMaterialColor', (WidgetTester tester) async {
    final setMaterialColor = SetMaterialColor();
    Color color = const Color(0xFF00FF00);
    final materialColor = setMaterialColor.createMaterialColor(color);
    expect(materialColor, isInstanceOf<MaterialColor>());
  });
}
