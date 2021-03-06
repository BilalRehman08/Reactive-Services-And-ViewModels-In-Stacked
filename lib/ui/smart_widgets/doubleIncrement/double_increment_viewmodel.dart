import 'package:reactive_services/app/locator.dart';
import 'package:reactive_services/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncrementViewModel extends ReactiveViewModel{
  final counterSer = locator<CounterServices>();
  int get counterr => counterSer.count;

    void updateCounter(){
      counterSer.doubleCounter();
      notifyListeners();
    }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [counterSer];
}