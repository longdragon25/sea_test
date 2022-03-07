import 'package:flutter/material.dart';

class SwitchCustom extends StatefulWidget {
  bool value;
  final String name;

  SwitchCustom({Key? key, required this.value, required this.name})
      : super(key: key);

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
            activeColor: Color.fromRGBO(192, 209, 125, 1),
            inactiveThumbColor: Color.fromRGBO(81, 80, 85, 1),
            inactiveTrackColor: Color.fromRGBO(177, 177, 177, 1),
            activeTrackColor: Color.fromRGBO(177, 177, 177, 1),
            value: widget.value,
            onChanged: (value) => setState(() {
                  widget.value = value;
                })),
        Text(
          widget.name,
          style: Theme.of(context).textTheme.headline4!.copyWith(
              color:
                  widget.value ? Colors.black.withOpacity(0.8) : Colors.grey),
        )
      ],
    );
  }
}
