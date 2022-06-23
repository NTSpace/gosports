import 'package:flutter/cupertino.dart';
import 'package:gosports/models/tim.dart';
import 'package:gosports/services/tim_service.dart';

class TimProvider with ChangeNotifier {
  TimModel? _tim;
  TimModel? get tim => _tim;
  set tim(TimModel? tim) {
    if (this.tim == tim) return;
    _tim = tim;
    notifyListeners();
  }

  Future<void> getTim(String links) async {
    try {
      TimModel tim = await TimService.getTim(links: links);
      this.tim = tim;
    } catch (e) {
      return;
    }
  }
}
