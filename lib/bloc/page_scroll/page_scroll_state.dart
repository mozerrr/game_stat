part of 'page_scroll_cubit.dart';

@immutable
abstract class PageScrollState {
  final double position;
  const PageScrollState({this.position = 0});
}

class PageScrollInitial extends PageScrollState {
  const PageScrollInitial({required double position})
      : super(position: position);
}

class PageNewPosition extends PageScrollState {
  const PageNewPosition({required double position}) : super(position: position);
}
