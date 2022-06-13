import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class KontribusiPemain extends StatelessWidget {
  final String nomorpg, namapemain;
  final Color boxcolor, activecolor;
  final bool value;
  final ValueChanged<bool> onChanged;

  const KontribusiPemain({
    Key? key,
    required this.nomorpg,
    required this.namapemain,
    required this.boxcolor,
    required this.activecolor,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: boxcolor,
      ),
      width: 153,
      height: 87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                margin: const EdgeInsets.only(right: 7, top: 8,),
                child: InkWell(
                  child: Checkbox(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6.0),
                      ),
                    ),
                    activeColor: activecolor,
                    value: value,
                    onChanged: (bool? newValue) {
                      onChanged(newValue!);
                    },
                  ),
                ),
              ),
            ],
          ),
          Text(
            nomorpg,
            style: whiteTextStyle.copyWith(fontSize: 32, fontWeight: bold),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 1),
            child: Text(
              namapemain,
              style: whiteTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
