import 'package:formz/formz.dart';

// Define input validation errors
enum CellPhoneError { empty, length }

// Extend FormzInput and provide the input type and error type.
class Cellphone extends FormzInput<String, CellPhoneError> {
  // Call super.pure to represent an unmodified form input.
  const Cellphone.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Cellphone.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == CellPhoneError.empty) return 'El campo es requerido';
    //regex to validate is cell phone number
    // if (displayError == CellPhoneError.invalid) return 'El campo es requerido';

    var regexCellphone = RegExp(r'^[0-9]{10}$');

    if (!regexCellphone.hasMatch(value)) return 'El campo es requerido';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  CellPhoneError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return CellPhoneError.empty;
    if (value.length < 6) return CellPhoneError.length;

    return null;
  }
}
