import 'package:flutter/material.dart';

import '../widgets/text_to_speech.dart';

class BottomTab extends StatelessWidget {
  final VoidCallback transitionFunction;
  final String labelText;
  final IconData icon;
  const BottomTab(
      {super.key,
      required this.transitionFunction,
      required this.labelText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    void buttonTapProcess() {
      if (labelText == "戻る") {
        TextToSpeech.speak("1つ前のページに移動しました｡");
      } else {
        TextToSpeech.speak("$labelTextページに移動しました｡");
      }
      transitionFunction();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () => buttonTapProcess(),
          onLongPress: () => buttonTapProcess(),
          child: Container(
            width: deviceHeight * 0.1,
            height: deviceHeight * 0.08,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  labelText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
