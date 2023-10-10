import 'package:bikecare/src/config/router/router_application.dart';
import 'package:bikecare/src/config/router/router_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routing_state.dart';

class RoutingCubit extends Cubit<RoutingState> {
  RoutingCubit() : super(const RoutingInitialState());

  void selectedNavigationBarItems(int index) {
    switch (index) {
      case 0:
        emit(
          RoutingLoadedState(
            bottomNavPath: PAGES.dashboard.screenPath,
            bottomNavBarIndex: index,
          ),
        );
        break;
      case 1:
        emit(
          RoutingLoadedState(
            bottomNavPath: PAGES.notification.screenPath,
            bottomNavBarIndex: index,
          ),
        );
        break;
      case 2:
        emit(
          RoutingLoadedState(
            bottomNavPath: PAGES.planning.screenPath,
            bottomNavBarIndex: index,
          ),
        );
        break;
      case 3:
        emit(
          RoutingLoadedState(
            bottomNavPath: PAGES.profile.screenPath,
            bottomNavBarIndex: index,
          ),
        );
        break;
    }
  }

  void goToPage(String path) {
    AppRouter.router.go(path);
  }

  void pushToPage(String path) {
    AppRouter.router.push(path);
  }
}
