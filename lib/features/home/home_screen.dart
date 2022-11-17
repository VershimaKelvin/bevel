import 'package:bevel/app/styles/app_colors.dart';
import 'package:bevel/app/view/widgets/app_bar.dart';
import 'package:bevel/core/constants/app_assets.dart';
import 'package:bevel/core/navigators/route_names.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppbar(),
      body: const Image(
        image: AssetImage(AppAsset.loanBag),
      )
    );
  }
}
