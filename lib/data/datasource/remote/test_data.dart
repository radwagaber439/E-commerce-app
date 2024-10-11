import 'package:e_commerace_project/core/class/crud.dart';
import 'package:e_commerace_project/linkapi.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var response = await crud.postData(applink.server, {});
    return response.fold((l) => l, (r) => r);
  }
}
