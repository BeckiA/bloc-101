import 'package:bloc/bloc.dart';

// Creating Cubit

class CounterCubit extends Cubit<int> {
  // Cubit<int> This defines what state the cubit is going to manage!
  CounterCubit()
      : super(
            0); //The super manages the initalState internally by setting it to 0!

  void increment() =>
      emit(state + 1); // Handling the state change of the cubit using emit!
}

void main(List<String> args) async {
  final cubit = CounterCubit();
  // Using Cubits
  // print(cubit
  //     .state); // This will print the inital state of the CounterCubit(i.e: 0)
  // cubit
  //     .increment(); //Invoking the increment function to trigger the state change
  // print(cubit.state); //The state will get updated and now we'll get 1
  // cubit.close(); //Closing the cubit instance!

  // 2: Streaming a Cubit!
  // Using Cubits with Subscription
  final subscription = cubit.stream.listen(print);
  // Will start by printing 1!
  //This will let the cubit to subscribe for state changes and
  // to listen when there is a state change being trigered
  cubit.increment();
  await Future.delayed(Duration.zero);
  // We use the delayed function to prevent the Future from being
  //canceled as soon as it printed the output
  // TODO: Only subsequent state changes will be received when calling listen on a Cubit.
  await subscription.cancel();
  await cubit.close();
}
