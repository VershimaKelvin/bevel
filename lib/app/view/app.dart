import 'package:bevel/core/navigators/route_names.dart';
import 'package:bevel/core/navigators/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [
        //providers should be put here, remove const key word
      ],
      child: const MaterialApp(
        initialRoute: Routes.homeScreen,
        //all routes should be created in the route file not here
        // onGenerateRoute: generateRoute,
      ),
    );
  }
}
