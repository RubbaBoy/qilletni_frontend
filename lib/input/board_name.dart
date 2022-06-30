import 'package:formz/formz.dart';

enum BoardNameValidationError { invalid }

class BoardName extends FormzInput<String, BoardNameValidationError> {
  const BoardName.pure() : super.pure('');

  const BoardName.dirty([String valid = '']) : super.dirty(valid);

  static final _boardNameRegExp = RegExp(r'^[\w -_]+$');

  @override
  BoardNameValidationError? validator(String? value) {
    return _boardNameRegExp.hasMatch(value ?? '')
        ? null
        : BoardNameValidationError.invalid;
  }
}
