import 'package:flutter_toro/app/modules/home/infra/repositories/socket_stream_repository_interface.dart';
import 'package:flutter_toro/app/modules/home/infra/services/socket/socket_stream_service_interface.dart';
import 'package:flutter_toro/app/modules/home/models/quote.dart';
import 'package:flutter_toro/app/modules/home/models/quotes.dart';

class SocketStreamRepository extends ISocketStreamRepository {
  final ISocketStreamService socketStreamService;
  Quotes quotes = new Quotes();

  SocketStreamRepository({this.socketStreamService}) {
    this.socketStreamService.connect();
  }

  @override
  void listenToSocketEvent(Function callback) {
    this.socketStreamService.stream.listen((dynamic event) {
      callback(this.treatEventSocket(event));
    });
  }

  @override
  Quotes treatEventSocket(dynamic event) {
    Quote quote = Quote.fromJson(event);

    quotes.setQuotes = quote;

    return quotes;
  }
}
