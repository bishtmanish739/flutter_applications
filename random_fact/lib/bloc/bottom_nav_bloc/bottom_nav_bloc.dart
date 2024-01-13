import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_event.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavItemEvent, BottomNavState> {
  BottomNavBloc(super.initialState) {
    on<BottomNewItemTappedEvent>(((event, emit) {
      int index = event.index;
      emit(ChangedItemState(index));
    }));
  }
}
