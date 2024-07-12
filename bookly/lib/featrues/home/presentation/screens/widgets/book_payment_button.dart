import 'package:flutter/material.dart';
import 'package:bookly/core/widgets/actions_button.dart';

class BookPaymentButton extends StatelessWidget {
  const BookPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: ActionsButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: 'free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          )),
          Expanded(
              child: ActionsButton(
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            text: 'Free preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            fontSize: 16,
          ))
        ],
      ),
    );
  }
}
