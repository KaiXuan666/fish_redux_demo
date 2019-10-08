import 'package:flutter/material.dart' hide Action;
import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'action.dart';

Effect<MainPageState> buildEffect() {
  return combineEffects(<Object, Effect<MainPageState>>{
    Lifecycle.initState: _init,
    MainAction.testEffect:_testEffection
  });
}

///initState
void _init(Action action, Context<MainPageState> ctx) async {}

void _testEffection(Action action, Context<MainPageState> ctx) async {
  //处理自己的逻辑
  //...//
  //发送action修改state数据
  ctx.dispatch(MainActionCreator.testReducerAction());
}