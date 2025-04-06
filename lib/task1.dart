/// Support for doing something awesome.
///
/// More dartdocs go here.
library;
import 'package:logging/logging.dart';
import 'package:my_big_number/task1.dart';
export 'src/task1_base.dart';



final Logger _logger = Logger('MyBigNumber');

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  MyBigNumber myBigNumber = MyBigNumber();
  String result = myBigNumber.sum(stn1: "919", stn2: "2");
  _logger.info('Kết quả hoàn thành: $result');
}
