import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:logger/logger.dart';

import 'item.dart';

class EntryConverter extends Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    // throw UnimplementedError();
    if (request.multipart) {
      return request;
    }
    if (request.method == 'GET' ||
        request.method == 'DELETE' ||
        request.body == null) {
      return request;
    }

    final req =
        applyHeader(request, contentTypeKey, jsonHeaders, override: false);

    return req.copyWith(body: JsonMapper.serialize(request.body));
  }

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    // if (!response.body){
    //   return response.copyWith<BodyType>(body:);
    // }
    final resBody = json.decode(utf8.decode(response.bodyBytes));
    // final log = Logger();
    // log.d(resBody);

    return response.copyWith<BodyType>(
        body: JsonMapper.deserialize<BodyType>(resBody));
  }
}
