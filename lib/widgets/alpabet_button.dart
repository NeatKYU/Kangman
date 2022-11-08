import 'package:flutter/material.dart';

class AlpbetButton extends StatefulWidget {
  final String label;
  const AlpbetButton({super.key, required this.label});

  @override
  State<AlpbetButton> createState() => _AlpbetButtonState();
}

class _AlpbetButtonState extends State<AlpbetButton> {
  bool _disable = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        disabledBackgroundColor: Colors.grey
      ),
      onPressed: _disable
          ? null
          : () {
              setState(() {
                _disable = true;
              });
            },
      child: Center(
        child: Text(
          widget.label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 30,
                color: _disable ? Colors.black : Colors.white
              ),
        ),
      ),
    );
  }
}
