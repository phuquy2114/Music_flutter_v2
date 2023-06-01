
import 'package:connectivity/connectivity.dart';

extension ValueConnectResultToString on ConnectivityResult {

  String toValue() {
    return toString().split('.').last;
  }
}
