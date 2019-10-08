import 'package:flutter/material.dart' hide Action;
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

///reducer事件分发
Reducer<MainPageState> buildReducer() {
  return asReducer(<Object, Reducer<MainPageState>>{
    //接收action后根据不同的action匹配对应的方法
    MainAction.testReducer: testReducer,
  });
}

MainPageState testReducer(MainPageState state, Action action) {
//需要对数据进行拷贝后做修改
  MainPageState newState = state.clone();
  newState.account ++;
  //返回一个新的state，扁平化通知组件刷新
  return newState;
}