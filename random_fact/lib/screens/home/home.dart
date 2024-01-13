import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:random_fact/bloc/bottom_nav_bloc/bottom_nav_state.dart';
import 'package:random_fact/screens/appbar/appbar.dart';
import 'package:random_fact/screens/bottom_nav/bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => BottomNavBloc(InitialState()),
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Appbar(title: 'Home'),
          ),
          body: BlocBuilder<BottomNavBloc, BottomNavState>(
            builder: (context, state) {
              if (state is InitialState) {
                return Text(
                  state.selectedIndex.toString(),
                  style: const TextStyle(color: Colors.black),
                );
              } else {
                return Text(
                  state.selectedIndex.toString(),
                  style: const TextStyle(color: Colors.black),
                );
              }
            },
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
