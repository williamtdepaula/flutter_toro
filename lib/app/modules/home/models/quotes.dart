import 'package:flutter_toro/app/modules/home/models/quote.dart';

class Quotes {
  List<Quote> quotes = [];

  Quotes({this.quotes});

  set setQuotes(Quote quote) {
    int index = quotes.indexWhere((element) => element.name == quote.name);

    if (index == -1)
      quotes.add(quote);
    else
      quotes[index] = quote;
  }
}
