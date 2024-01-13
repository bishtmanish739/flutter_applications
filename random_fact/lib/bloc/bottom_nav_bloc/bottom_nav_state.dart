abstract class BottomNavState {
  int selectedIndex = 0;
}

class InitialState extends BottomNavState {
  
}

class ChangedItemState extends BottomNavState {
  ChangedItemState(int selectedIndex) {
    this.selectedIndex = selectedIndex;
  }
}
