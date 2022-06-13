import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class LabeledCheckbox2 extends StatelessWidget {
  const LabeledCheckbox2({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
    required this.activecolor,
    required this.boxcolor,
  }) : super(key: key);

  final String label;
  final Color activecolor, boxcolor;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Container(
        height: 28,
        width: 157,
        decoration: BoxDecoration(
            color: boxcolor, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              child: Checkbox(
                shape: const CircleBorder(),
                activeColor: activecolor,
                value: value,
                onChanged: (bool? newValue) {
                  onChanged(newValue!);
                },
              ),
            ),
            Expanded(
              child: Text(
                label,
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
