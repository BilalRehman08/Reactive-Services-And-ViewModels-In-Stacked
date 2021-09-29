import 'package:reactive_services/app/locator.dart';
import 'package:reactive_services/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncrementViewModel extends BaseViewModel{
  final counterSer = locator<CounterServices>();

    void updateCounter(){
      counterSer.doubleCounter();
      notifyListeners();
    }
}