import 'package:flutter/material.dart';
import 'package:point_design_system/point_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PDSWrapper(
      child: Widgetbook.material(
        directories: directories,
        addons: [
          DeviceFrameAddon(
            initialDevice: Devices.android.samsungGalaxyNote20,
            devices: [
              Devices.android.samsungGalaxyNote20,
              Devices.android.smallTablet,
              Devices.android.largeTablet,
              Devices.ios.iPhoneSE,
              Devices.ios.iPhone13ProMax,
              Devices.ios.iPadPro11Inches,
            ],
          ),
          // GridAddon(),
          AlignmentAddon(),
          BuilderAddon(
            name: 'SafeArea',
            builder: (context, child) => SafeArea(child: child),
          ),
        ],
        appBuilder: (context, child) => PDSWrapper(
          child: ColoredBox(
            color: Colors.white10,
            child: child,
          ),
        ),
      ),
    );
  }
}
