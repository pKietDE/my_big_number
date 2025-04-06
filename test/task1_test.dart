import 'package:test/test.dart';
import 'package:task1/task1.dart';

void main() {
  group('MyBigNumber sum()', () {
    final myBigNumber = MyBigNumber();

    test('Cộng hai số có độ dài bằng nhau', () {
      expect(myBigNumber.sum(stn1: '123', stn2: '456'), '579');
    });

    test('Cộng hai số có độ dài khác nhau', () {
      expect(myBigNumber.sum(stn1: '336', stn2: '1278'), '1614');
    });

    test('Cộng với số 0', () {
      expect(myBigNumber.sum(stn1: '0', stn2: '789'), '789');
      expect(myBigNumber.sum(stn1: '12345', stn2: '0'), '12345');
    });

    test('Cộng hai số 0', () {
      expect(myBigNumber.sum(stn1: '0', stn2: '0'), '0');
    });

    test('Cộng hai số lớn', () {
      String a = '999999999999999999999999';
      String b = '1';
      expect(myBigNumber.sum(stn1: a, stn2: b), '1000000000000000000000000');
    });

    test('Cộng số rỗng với số khác', () {
      expect(myBigNumber.sum(stn1: '', stn2: '100'), '100');
      expect(myBigNumber.sum(stn1: '100', stn2: ''), '100');
    });

    test('Cộng hai chuỗi rỗng', () {
      expect(myBigNumber.sum(stn1: '', stn2: ''), '0');
    });

  });
  
}
