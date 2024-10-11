import 'package:get/get.dart';

validinput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "Can't be Empty";
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "Not Valid Username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not Valid Phone";
    }
  }

  if (val.length < min) {
    return "Can't be less than $min";
  }

  if (val.length > max) {
    return "Can't be less than $max";
  }
}
