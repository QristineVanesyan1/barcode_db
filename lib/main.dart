import 'package:barcode_db/runner/io.dart'
    if (dart.library.web) 'package:betting_calc/runner/web.dart'
    as multi_platform;

void main() {
  // TODO ADD Listener of error for crashlytics
  multi_platform.runner();
}
