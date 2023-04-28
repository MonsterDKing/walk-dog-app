import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:walk_dog_app/app/feature/signUp/presentation/blocs/sign_up/sign_up_bloc.dart';

class SignInTextFieldWidget extends StatelessWidget {
  const SignInTextFieldWidget(
      {super.key,
      required this.label,
      this.isPassword = false,
      this.isPhone = false,
      required this.event,
      this.errorText});
  final String label;
  final bool isPassword;
  final bool isPhone;
  final Function(String) event;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<SignUpBloc>();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      child: TextFormField(
        onChanged: (value) => {bloc.add(event(value))},
        //only number
        keyboardType: isPhone ? TextInputType.number : TextInputType.text,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(240, 240, 240, 1), width: 1.0),
            borderRadius: BorderRadius.circular(14),
          ),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromRGBO(174, 174, 178, 1))),
          fillColor: const Color.fromRGBO(240, 240, 240, 1),
          filled: true,
          errorText: errorText,
        ),
      ),
    );
  }
}
