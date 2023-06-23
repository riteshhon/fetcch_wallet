import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

class SuccessAlertBox {
  final BuildContext context;
  final String? title;
  final IconData? icon;
  final String? messageText;
  final Color? titleTextColor;
  final Color? messageTextColor;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final String? buttonText;
  void Function() buttonOnClick;
  SuccessAlertBox({
    required this.context,
    this.title,
    this.messageText,
    this.titleTextColor,
    this.messageTextColor,
    this.buttonColor,
    this.buttonText,
    this.buttonTextColor,
    this.icon,
    required this.buttonOnClick,
  }) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            title: Row(
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: titleTextColor ?? const Color(0xFF4CB051),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Flexible(
                  child: Text(
                    title ?? "Your alert title",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: titleTextColor ?? const Color(0xFF4E4E4E)),
                  ),
                )
              ],
            ),
            contentPadding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
            children: <Widget>[
              Text(
                messageText ?? "Alert message here",
                style: TextStyle(color: messageTextColor),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          buttonColor ?? const Color(0xFF4CB051),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () => buttonOnClick(),
                    child: Text(
                      buttonText ?? "Close",
                      style: TextStyle(color: buttonTextColor ?? Colors.white),
                    ),
                  )
                ],
              )
            ],
          );
        });
  }
}
