import 'package:flutter_toro/app/modules/home/models/quote.dart';
import 'package:flutter_toro/app/modules/home/models/quotes.dart';

abstract class ISocketStreamRepository {
  void listenToSocketEvent(Function callback);
  Quotes treatEventSocket(dynamic event);
}
