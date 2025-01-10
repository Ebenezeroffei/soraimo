class Validators {
  static final general = RegExp(r'.+');

  static final email =
      RegExp(r'^[a-zA-Z][a-zA-Z\d]+@[a-z]+\.[a-z]{3,}(\.[a-z]{2,})?$');

  static final password = RegExp(r'^[\S]{8,24}$');
}
