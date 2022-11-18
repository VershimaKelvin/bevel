import 'package:bevel/app/view/app.dart';
import 'package:bevel/bootstrap.dart';
import 'package:bevel/core/di/di_container.dart';

Future<void> main() async {
  await configureDependencies();
  await bootstrap(
    () => const App(),
  );
}
