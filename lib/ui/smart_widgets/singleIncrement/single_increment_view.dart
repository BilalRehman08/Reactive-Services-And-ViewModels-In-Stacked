import 'package:flutter/material.dart';
import 'package:reactive_services/ui/smart_widgets/singleIncrement/single_increment_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SingleIncrementView extends StatelessWidget {
  const SingleIncrementView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncrementViewModel>.reactive(builder: (context,model,child)=>
    GestureDetector(
        onTap: (){},
        child: Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
          child: const Text("Increment"),
        ),
      ),
    viewModelBuilder: ()=> SingleIncrementViewModel(),
    );
      
  }
}