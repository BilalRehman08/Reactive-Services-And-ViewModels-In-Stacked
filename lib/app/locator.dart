import 'package:get_it/get_it.dart';
import 'package:reactive_services/services/counter_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CounterServices());

}