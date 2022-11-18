import 'package:bevel/core/di/di_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt di = GetIt.instance;
@injectableInit
Future<void> configureDependencies() => $initGetIt(di);

//run flutter pub run build_runner build to generate .config
