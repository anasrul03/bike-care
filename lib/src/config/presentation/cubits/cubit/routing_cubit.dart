import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routing_state.dart';

class RoutingCubit extends Cubit<RoutingState> {
  RoutingCubit() : super(const RoutingInitialState());

  void selectedNavigationBarItem({required int bottomNavBarIndex}) {
    switch (bottomNavBarIndex) {
      case 0:
        emit(
          const RoutingFailedState(
            bottomNavPage: '',
            bottomNavBarIndex: 0,
          ),
        );
        break;
      case 1:
        emit(
          const RoutingFailedState(
            bottomNavPage: '',
            bottomNavBarIndex: 1,
          ),
        );
        break;
      case 2:
        emit(
          const RoutingFailedState(
            bottomNavPage: '',
            bottomNavBarIndex: 2,
          ),
        );
        break;
      case 3:
        emit(
          const RoutingFailedState(
            bottomNavPage: '',
            bottomNavBarIndex: 3,
          ),
        );
        break;
    }
  }
}
