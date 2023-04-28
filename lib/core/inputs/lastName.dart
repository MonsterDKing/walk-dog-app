import 'package:formz/formz.dart';

// Define input validation errors
enum LastNameError { empty, length }

// Extend FormzInput and provide the input type and error type.
class LastName extends FormzInput<String, LastNameError> {
  // Call super.pure to represent an unmodified form input.
  const LastName.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const LastName.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == LastNameError.empty) return 'El campo es requerido';
    if (displayError == LastNameError.length) return 'Mínimo 6 caracteres';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  LastNameError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return LastNameError.empty;
    if (value.length < 6) return LastNameError.length;

    return null;
  }
}
