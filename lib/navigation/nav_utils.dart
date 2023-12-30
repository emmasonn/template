class NavCallBack<T> {
  final Function(T?)? callBack;
  final T? object;
  NavCallBack({
    this.object,
    this.callBack,
  });
}
