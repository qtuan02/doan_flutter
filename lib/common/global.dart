import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const BASE_URL_LOCAL = "http://192.168.1.8:3030";
// const BASE_URL_LOCAL = "https://doan-be-qh1m.onrender.com";
const QUANTITY_SOLD = 10;

void handleShowToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey[600],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}