import 'package:counter_app_with_bloc/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COUNTER APP WITH BLOC')),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Text(
              state.count.toString(),
              style: const TextStyle(fontSize: 55),
            ),
          ),
        );
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(IncrementCounter()),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(DecrementCounter()),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
