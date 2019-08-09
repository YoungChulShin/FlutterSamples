
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/bloc/timer_bloc.dart';

class Timer extends StatelessWidget {

  static const TextStyle timerTextStyle = TextStyle (
    fontSize: 60,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {

    final TimerBloc _timerBloc = BlocProvider.of<TimerBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Timer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100.0),
            child: Center(
              child: BlocBuilder(
                bloc: _timerBloc,
                builder: (context, state) {

                }
              ),
            ),
          )
        ],
      ) ,
    );
  }
}