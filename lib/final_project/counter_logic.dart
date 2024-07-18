

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit():super(InitCounter());
  static CounterCubit getObject(BuildContext context)
  {
    return BlocProvider.of(context);
  }
  int c=1;
  void plusC()
  {
    c++;
    emit(Plus());
  }
  void munsC()
  {
    c--;
    emit(Muns());
  }
  void resetC()
  {
    c=0;
    emit(Reset());
  }
}