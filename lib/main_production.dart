// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bevel/app/view/app.dart';
import 'package:bevel/bootstrap.dart';
import 'package:bevel/core/di/di_container.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  await bootstrap(
    () => const App(),
  );
}
