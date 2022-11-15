import 'package:package_info_plus/package_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule {
  @preResolve
  //these are just examples
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();
}
