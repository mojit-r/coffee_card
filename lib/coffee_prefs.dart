import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:coffee_card/shared/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 0;

  void increaseStrength() {
    setState(() {
      strength < 5 ? strength += 1 : strength = 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars < 5 ? sugars += 1 : sugars = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText('Takat: '),

            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                height: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox()),

            StyledButton(onPressed: increaseStrength, child: Text('+')),
          ],
        ),
        Row(
          children: [
            const StyledBodyText('Sakar: '),

            if (sugars == 0) const StyledBodyText('no sakar..'),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            Expanded(child: SizedBox(width: 50)),

            StyledButton(onPressed: increaseSugar, child: Text('+')),
          ],
        ),
      ],
    );
  }
}
