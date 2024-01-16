import 'package:bloc_pattern_practices/bloc/counter_bloc.dart';
import 'package:bloc_pattern_practices/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counterBloc.add(CounterDecremented()),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
          const SizedBox(width: 8),
          FloatingActionButton(
            onPressed: () => counterBloc.add(CounterIncremented()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
