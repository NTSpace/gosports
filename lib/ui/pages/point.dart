import 'package:flutter/material.dart';
import 'package:gosports/ui/widgets/scoreboard.dart';

class PointPage extends StatefulWidget {
  const PointPage({Key? key}) : super(key: key);

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const ScoreBoard(),
            Row(
              children: [Text('anjay')],
            )
          ],
        ),
      ),
    );
  }
}
