import 'package:flutter/material.dart';

import '../utils/bb_common.dart';
import '../models/bb_text_attributes_definations.dart';

export '../models/bb_text_attributes.dart';

class BBMediaTagView extends StatelessWidget {
  final TextAttributesDifinations textAttributes;

  BBMediaTagView({this.textAttributes});

  @override
  Widget build(BuildContext context) {
    return textAttributes == null ||
            textAttributes.text == null ||
            textAttributes.text.isEmpty
        ? SizedBox.shrink()
        : Container(
            margin: EdgeInsets.only(right: defaultMargin.right),
            decoration: BoxDecoration(
              color: BBColor.from(
                  Theme.of(context).brightness == Brightness.light
                      ? textAttributes?.backgroundColor
                      : textAttributes?.darkModeBackgroundColor),
              border: Border.all(
                color: BBColor.from(
                        Theme.of(context).brightness == Brightness.light
                            ? textAttributes.borderColor
                            : textAttributes.darkModeBorderColor) ??
                    Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(3.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Center(
              child: Text(
                textAttributes.text,
                style: Theme.of(context).textTheme.display4.copyWith(
                      color: BBColor.from(
                          Theme.of(context).brightness == Brightness.light
                              ? textAttributes.textColor
                              : textAttributes.darkModeTextColor),
                    ),
              ),
            ),
          );
  }
}
