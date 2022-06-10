import 'package:flutter/material.dart';
import 'package:gosports/shared/theme.dart';

class Namatimsc extends StatelessWidget {
  const Namatimsc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          height: 23,
          // margin: const EdgeInsets.only(top: 17, bottom: 17, right: 11),
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 11,
                height: 23,
                decoration: const BoxDecoration(
                    color: Color(0xffFF7E1F),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(0))),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 47),
                child: Text(
                  'GSW',
                  textAlign: TextAlign.center,
                  style: orangeTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 23,
          margin: const EdgeInsets.only(
            top: 17,
            bottom: 17,
          ),
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 47),
                child: Text(
                  'MEM',
                  textAlign: TextAlign.center,
                  style: orangeTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                width: 11,
                height: 23,
                decoration: const BoxDecoration(
                  color: Color(0xffFF7E1F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
