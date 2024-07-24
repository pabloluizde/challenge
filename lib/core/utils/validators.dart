class Validators {
  String? validateEmail(String? value) {
    final regex =
        RegExp(r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$");

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Email invalido'
        : null;
  }
}
