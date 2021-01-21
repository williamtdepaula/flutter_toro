abstract class ISocketStreamService {
  void connect();
  void disconnect();
  Stream get stream;
  Sink get sink;
}
