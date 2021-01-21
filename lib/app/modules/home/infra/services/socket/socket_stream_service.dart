import 'package:flutter_toro/app/modules/home/infra/services/socket/socket_stream_service_interface.dart';
import 'package:flutter_toro/app/shared/constants.dart';
import 'package:web_socket_channel/io.dart';

class SocketStreamService extends ISocketStreamService {
  IOWebSocketChannel _webSocketChannel;

  @override
  void connect() {
    this._webSocketChannel = IOWebSocketChannel.connect(SOCKET_QUOTES_URL);
    // TODO: implement connect
  }

  @override
  void disconnect() {
    this._webSocketChannel.sink.close();
  }

  @override
  // TODO: implement sink
  Sink get sink => this._webSocketChannel.sink;

  @override
  // TODO: implement stream
  Stream get stream => this._webSocketChannel.stream;
}
