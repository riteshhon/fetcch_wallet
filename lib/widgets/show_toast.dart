import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(FToast fToast, String message, IconData icon, Color colorVal) {
  return fToast.showToast(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: colorVal,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: UiConstants.whiteColor,
          ),
          const SizedBox(
            width: 12.0,
          ),
          SizedBox(
            width: 200,
            child: Text(
              message,
              style: const TextStyle(
                color: UiConstants.whiteColor,
              ),
            ),
          ),
        ],
      ),
    ),
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}
