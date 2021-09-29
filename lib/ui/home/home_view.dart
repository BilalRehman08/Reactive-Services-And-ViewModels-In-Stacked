import 'package:flutter/material.dart';
import 'package:reactive_services/ui/smart_widgets/doubleIncrement/double_increment_view.dart';
import 'package:reactive_services/ui/smart_widgets/singleIncrement/single_increment_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              SingleIncrementView(),
              SizedBox(height: 30,),
              DoubleIncrementView(),
            ],
          ),
        ),
      ),
    );
  }
}