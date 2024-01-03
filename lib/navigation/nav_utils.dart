class NavParamWrapper<T> {
  final Function(T?)? callBack;
  final T? object;
  NavParamWrapper({
    this.object,
    this.callBack,
  });
}
