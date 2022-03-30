import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycubitproject1/cubit/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return myScaffold(context);
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("counter app with BLOC"),
    ),
    body: BlocBuilder<CounterCubit , int>(
        builder: (context, count) => Center(
              child: Text("$count"),
            )),
    floatingActionButton: Row(
      children: [
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
            context.read<CounterCubit>().increment();
            }),

        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
            context.read<CounterCubit>().decrement();
            }),
        
      ],
    ),
  );
  }
}
