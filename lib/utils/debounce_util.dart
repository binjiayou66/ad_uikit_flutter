import 'dart:async';

/// 函数防抖
///
/// [func]: 要执行的方法
/// [duration]: 防抖时长
void Function() debounce(
  Function? func, [
  Duration duration = const Duration(milliseconds: 300),
]) {
  bool limiting = false;
  return () {
    if (limiting) return;
    limiting = true;
    Future.delayed(duration, () {
      limiting = false;
    });
    func?.call();
  };
}

// 防抖中间变量Map表
Map<dynamic, bool> _debounceAsyncMap = {};

/// 异步函数防抖
///
/// [key]: 防抖key值，一般可使用this.hashCode
/// [func]: 要执行的方法
void Function() debounceAsync(
  dynamic key,
  Future Function()? func,
) {
  return () {
    if (_debounceAsyncMap[key] == true) return;
    _debounceAsyncMap[key] = true;
    func?.call().then((value) {
      _debounceAsyncMap.remove(key);
    });
  };
}
