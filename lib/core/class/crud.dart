import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:e_commerace_project/core/class/statusrequest.dart';
import 'package:e_commerace_project/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      // Handle network errors, including host lookup errors.
      print('Error: $_');
      return const Left(StatusRequest.serverfailure);
    }
  }
}
