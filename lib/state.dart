import 'package:fish_redux/fish_redux.dart';

class MainPageState extends Cloneable<MainPageState> {
  int account;

  @override
  MainPageState clone() {
    return MainPageState()..account = account;
  }
}

///初始化state
MainPageState initState(Map<String, dynamic> map) {
  return MainPageState()..account = 0;
}
