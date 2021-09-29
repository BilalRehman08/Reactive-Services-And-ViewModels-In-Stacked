import 'package:flutter/material.dart';
import 'package:reactive_services/ui/smart_widgets/doubleIncrement/double_increment_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncrementView extends StatelessWidget {
  const DoubleIncrementView({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncrementViewModel>.reactive(builder: (context,model,child)=> GestureDetector(
        onTap: (){
          print(model.counterr);
          model.updateCounter();
        },
        child: Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
          child:   Text("${model.counterr}"),
        ),
      ),
    viewModelBuilder: () => DoubleIncrementViewModel(),);
  }
}