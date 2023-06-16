

import 'package:intl/intl.dart';

class HumanFormat {

  static String humanReadbleNumber( double number){
    // Se necesita istalar el paquete intl de pub.dev
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: ''
    ).format(number);

    return formatterNumber;

  }

}