import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'page_scroll_state.dart';

class PageScrollCubit extends Cubit<PageScrollState> {
  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.99);

  PageScrollCubit() : super(const PageScrollInitial(position: 0)) {
    controller.addListener(() {
      emit(PageNewPosition(
          position: controller.offset / controller.position.maxScrollExtent));
    });
  }
}
