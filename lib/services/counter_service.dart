import 'package:observable_ish/value/value.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class CounterServices with ReactiveServiceMixin{
  RxValue<int> counter = RxValue<int>(0);
  int get count => counter.value;



  CounterServices(){
    listenToReactiveValues([counter]);
  }

  void incrementCounter(){
    counter.value++;
  }

  void doubleCounter(){
    counter.value=counter.value*2;
  }

}