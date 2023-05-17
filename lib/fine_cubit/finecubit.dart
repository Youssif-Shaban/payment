import 'package:bloc/bloc.dart';
import 'package:fines/fine_cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class fineCubit extends Cubit<fineStates> {
  fineCubit() : super(fineInitialState());

  static fineCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
}
