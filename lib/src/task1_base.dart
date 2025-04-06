import 'package:characters/characters.dart';
import 'package:logging/logging.dart';

final Logger _logger = Logger('MyBigNumber');

class MyBigNumber {
  MyBigNumber();

  String sum({required String stn1, required String stn2}) {
    int carry = 0;
    String result = '';
    int step = 1;
    if (stn1.isEmpty && stn2.isEmpty) {
      _logger.info('Cả 2 đều chuỗi đều rổng , nên trả về 0');
      return '0';
    }

    while (stn1.isNotEmpty || stn2.isNotEmpty || carry > 0) {
      int n1Last = 0;
      int n2Last = 0;

      if (stn1.isNotEmpty) {
        n1Last = int.parse(stn1.characters.last);
        stn1 = stn1.characters.skipLast(1).toString();
      }

      if (stn2.isNotEmpty) {
        n2Last = int.parse(stn2.characters.last);
        stn2 = stn2.characters.skipLast(1).toString();
      }

      int total = n1Last + n2Last + carry;
      _logger.info(
          'Lần $step: $n1Last + $n2Last + Nhớ($carry) = $total => Số: ${total % 10}, Nhớ: ${total ~/ 10}');
      result = '${total % 10}$result';
      carry = total ~/ 10;
      step++;
    }

    return result;
  }
}
