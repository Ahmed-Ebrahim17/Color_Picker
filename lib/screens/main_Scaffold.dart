import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_ui/Provider/theme_provider.dart';

import '../components/color_picker.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changer'),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                  onPressed: () {
                    colorPicekr(context);
                  },
                  icon: Icon(Icons.colorize)))
        ],
        backgroundColor: themeProvider.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Text',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: themeProvider.mainColor,
                  ),
            ),
            Text(
              'It is important to take care of the patient, to be followed by the patient, but it will happen at such a time that there is a lot of work and pain. For to come to the smallest detail, no one should practice any kind of work unless he derives some benefit from it. Do not be angry with the pain in the reprimand in the pleasure he wants to be a hair from the pain in the hope that there is no breeding.',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: themeProvider.mainColor,
                  ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: themeProvider.mainColor),
            ),
            Slider(
                activeColor: themeProvider.mainColor,
                inactiveColor: themeProvider.mainColor.withOpacity(0.5),
                value: 0,
                onChanged: (onChanged) {}),
            Switch(
              value: true,
              onChanged: (onChanged) {},
              activeColor: themeProvider.mainColor,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: themeProvider.mainColor,
          child: Icon(Icons.play_arrow_sharp),
          onPressed: () {
            colorPicekr(context);
          }),
    );
  }
}
