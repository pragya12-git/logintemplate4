import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logintemplate1/models/models.dart';

class LoginRepository {
//TODO 1. create a function where the login request is sent

  //TODO 2. Implement login request to the server in that function using http

  //http://app.neoassure.com/api/Mobile/login

  //POST method

  loginRequest({required String username, required String password}) async {
    var request;
    Map<String, dynamic> requestBody = {
      "Email": username,
      "Password": password,
    };

    request = await http.post(
      Uri.parse("http://app.neoassure.com/api/Mobile/login"),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(requestBody),
    );

    print(request.statusCode);
    print(request.body);

    Model model = Model.fromJson(jsonDecode(request.body));
    // print(model.success);
    // print(model.message);
    // print(model.message?.id);
    // print(model.message?.name);
    // print(model.message?.address);
    // print(model.message?.fullName);
    // print(model.message?.token);
    // print(model.message?.email);
    // print(model.message?.mobileNumber);
    // print(model.message?.roleId);
    // print(model.message?.roleName);

    return model;
  }
}
