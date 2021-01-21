class Quote {
  String name;
  double value;
  double timestamp;

  Quote({this.name, this.value, this.timestamp});

  Quote.fromJson(Map<String, double> json) {
    this.name = json.keys.first;
    this.value = json.values.first;
    this.timestamp = json['timestamp'];
  }
}
