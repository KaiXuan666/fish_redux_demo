import 'package:flutter/material.dart' hide Action;
import 'package:fish_redux/fish_redux.dart';

enum MainAction { testEffect,testReducer }

class MainActionCreator {

  static Action testEffectAction() {
    return new Action(MainAction.testEffect);
  }
  static Action testReducerAction() {
    return new Action(MainAction.testReducer);
  }
}