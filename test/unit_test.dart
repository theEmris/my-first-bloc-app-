import 'package:flutter_test/flutter_test.dart';
import 'package:mycubitproject1/cubit/counter_cubit.dart';

void main() {
  test("counter bloc is working", () {
    final exampleOFCounterCubit = CounterCubit();
    exampleOFCounterCubit.increment();
    expect(exampleOFCounterCubit.state, 1);

    exampleOFCounterCubit.decrement();

    expect(exampleOFCounterCubit.state, 0);
  });
}
