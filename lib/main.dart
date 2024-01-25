import 'package:bloc/bloc.dart';

// Creating Cubit

class CounterCubit extends Cubit<int> {
  // Cubit<int> This defines what state the cubit is going to manage!
  // CounterCubit()
  //     : super(
  //           0); //The super manages the initalState internally by setting it to 0!
  CounterCubit(int initalState)
      : super(
            initalState); // This is the external way of doing it using this we
  //can make it so flexiblr to handle external values!
}

// final cubitA = CounterCubit(0); //Inital State set to 0!
// final cubitB = CounterCubit(10); //Inital state set to 10!

void main(List<String> args) async {}
