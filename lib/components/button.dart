import 'package:flutter/material.dart';
import 'package:point_design_system/point_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Button Small',
  type: PDSButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget useCaseButtonSmall(BuildContext context) {
  return PDSButton.small(
    text: context.knobs.string(label: '버튼 텍스트', initialValue: '확인'),
    enabled: context.knobs.booleanOrNull(label: '활성화 여부', initialValue: true),
    style: context.knobs.list(
      label: '스타일',
      options: [
        PDSButtonStyle.contained,
        PDSButtonStyle.outlined,
      ],
    ),
  );
}

@UseCase(
  name: 'Button Medium',
  type: PDSButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget useCaseButtonMedium(BuildContext context) {
  return PDSButton.medium(
    text: context.knobs.string(label: '버튼 텍스트', initialValue: '확인'),
    enabled: context.knobs.booleanOrNull(label: '활성화 여부'),
    style: context.knobs.list(
      label: '스타일',
      options: [
        PDSButtonStyle.contained,
        PDSButtonStyle.outlined,
      ],
    ),
  );
}

@UseCase(
  name: 'Button Large',
  type: PDSButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget useCaseButtonLarge(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      PDSButton.large(
        text: context.knobs.string(label: '버튼 텍스트', initialValue: '확인'),
        enabled: context.knobs.booleanOrNull(label: '활성화 여부', initialValue: true),
        style: context.knobs.list(
          label: '스타일',
          options: [
            PDSButtonStyle.contained,
            PDSButtonStyle.outlined,
          ],
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      PDSButton.large(
          text: context.knobs.string(label: '버튼 텍스트', initialValue: '확인'),
          enabled: context.knobs.booleanOrNull(label: '활성화 여부', initialValue: true),
          style: PDSButtonStyle.outlined),
    ],
  );
}

@UseCase(
  name: 'Button XLarge',
  type: PDSButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget useCaseButtonXLarge(BuildContext context) {
  return PDSButton.xLarge(
    text: context.knobs.string(label: '버튼 텍스트', initialValue: '확인'),
    enabled: context.knobs.booleanOrNull(label: '활성화 여부', initialValue: true),
    style: context.knobs.list(
      label: '스타일',
      options: [
        PDSButtonStyle.contained,
        PDSButtonStyle.outlined,
      ],
    ),
  );
}
