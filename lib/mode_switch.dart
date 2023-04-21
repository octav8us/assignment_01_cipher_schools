import 'package:flutter/material.dart';

class modeSwitch extends StatefulWidget {
  const modeSwitch({
    super.key,
  });

  @override
  State<modeSwitch> createState() => _modeSwitchState();
}

class _modeSwitchState extends State<modeSwitch> {
  bool light = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      // Thumb icon when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.sunny);
      }
      return const Icon(Icons.dark_mode_outlined);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
      thumbIcon: thumbIcon,
      activeTrackColor: Colors.yellow,
      inactiveTrackColor: Colors.grey,
    );
  }
}
