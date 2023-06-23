import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:theme_ui/Provider/theme_provider.dart';

void colorPicekr(BuildContext context) {
  ThemeProvider themeProvider =
      Provider.of<ThemeProvider>(context, listen: false);
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            contentPadding: EdgeInsets.all(0.0),
            titlePadding: EdgeInsets.all(0.0),
            content: Wrap(
              children: [
                ColorPicker(
                  pickerColor: themeProvider.mainColor,
                  onColorChanged: (color) {
                    themeProvider.changeMainColor(color);
                  },
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'))
            ],
          ));
}
