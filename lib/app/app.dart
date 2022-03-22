import 'package:mobile_app/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// @StackedApp(routes: [MaterialRoute()])
// class App {}

@StackedApp(routes: [MaterialRoute(page: HomeView, initial: true)])
class App {}
