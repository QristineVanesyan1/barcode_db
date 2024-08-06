import 'package:betting_calc/runner/io.dart'
    if (dart.library.web) 'package:betting_calc/runner/web.dart'
    as multi_platform;
import 'package:intl/intl.dart';

void main() {
  multi_platform.runner();
}
