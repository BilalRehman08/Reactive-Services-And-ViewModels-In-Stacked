import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class CounterServices{
  int counter = 0;
  int get count => counter;

  void incrementCounter(){
    counter++;
  }

  void doubleCounter(){
    counter=counter*2;
  }

}