abstract class BottomNavItemEvent {}

class BottomNewItemTappedEvent extends BottomNavItemEvent {
  int index;
  BottomNewItemTappedEvent(this.index);
}
