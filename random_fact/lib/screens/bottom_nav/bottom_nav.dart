import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_event.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_state.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Date Facts',
                  backgroundColor: Colors.yellow),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Maths Facts',
                backgroundColor: Colors.blue,
              ),
            ],
            // type: BottomNavigationBarType.shifting,
            currentIndex: state.selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5);
      },
    );
  }

  void _onItemTapped(int value) {
    BlocProvider.of<BottomNavBloc>(context)
        .add(BottomNewItemTappedEvent(value));
  }
}
