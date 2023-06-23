/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'business.dart' as _i2;
import 'comment.dart' as _i3;
import 'example.dart' as _i4;
import 'location.dart' as _i5;
import 'person.dart' as _i6;
import 'product.dart' as _i7;
import 'rating.dart' as _i8;
import 'review.dart' as _i9;
import 'service.dart' as _i10;
import 'protocol.dart' as _i11;
import 'package:demopod_client/src/protocol/business.dart' as _i12;
import 'package:demopod_client/src/protocol/person.dart' as _i13;
import 'package:demopod_client/src/protocol/product.dart' as _i14;
import 'package:demopod_client/src/protocol/service.dart' as _i15;
export 'business.dart';
export 'comment.dart';
export 'example.dart';
export 'location.dart';
export 'person.dart';
export 'product.dart';
export 'rating.dart';
export 'review.dart';
export 'service.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Business) {
      return _i2.Business.fromJson(data, this) as T;
    }
    if (t == _i3.Comment) {
      return _i3.Comment.fromJson(data, this) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data, this) as T;
    }
    if (t == _i5.LocationCoords) {
      return _i5.LocationCoords.fromJson(data, this) as T;
    }
    if (t == _i6.Person) {
      return _i6.Person.fromJson(data, this) as T;
    }
    if (t == _i7.Product) {
      return _i7.Product.fromJson(data, this) as T;
    }
    if (t == _i8.Rating) {
      return _i8.Rating.fromJson(data, this) as T;
    }
    if (t == _i9.Review) {
      return _i9.Review.fromJson(data, this) as T;
    }
    if (t == _i10.Service) {
      return _i10.Service.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Business?>()) {
      return (data != null ? _i2.Business.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Comment?>()) {
      return (data != null ? _i3.Comment.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.LocationCoords?>()) {
      return (data != null ? _i5.LocationCoords.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Person?>()) {
      return (data != null ? _i6.Person.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Product?>()) {
      return (data != null ? _i7.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Rating?>()) {
      return (data != null ? _i8.Rating.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Review?>()) {
      return (data != null ? _i9.Review.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Service?>()) {
      return (data != null ? _i10.Service.fromJson(data, this) : null) as T;
    }
    if (t == List<_i11.Rating?>) {
      return (data as List).map((e) => deserialize<_i11.Rating?>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.Review?>) {
      return (data as List).map((e) => deserialize<_i11.Review?>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.LocationCoords?>) {
      return (data as List)
          .map((e) => deserialize<_i11.LocationCoords?>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i11.Comment?>) {
      return (data as List).map((e) => deserialize<_i11.Comment?>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i12.Business>) {
      return (data as List).map((e) => deserialize<_i12.Business>(e)).toList()
          as dynamic;
    }
    if (t == List<_i13.Person>) {
      return (data as List).map((e) => deserialize<_i13.Person>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.Product>) {
      return (data as List).map((e) => deserialize<_i14.Product>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.Service>) {
      return (data as List).map((e) => deserialize<_i15.Service>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Business) {
      return 'Business';
    }
    if (data is _i3.Comment) {
      return 'Comment';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.LocationCoords) {
      return 'LocationCoords';
    }
    if (data is _i6.Person) {
      return 'Person';
    }
    if (data is _i7.Product) {
      return 'Product';
    }
    if (data is _i8.Rating) {
      return 'Rating';
    }
    if (data is _i9.Review) {
      return 'Review';
    }
    if (data is _i10.Service) {
      return 'Service';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Business') {
      return deserialize<_i2.Business>(data['data']);
    }
    if (data['className'] == 'Comment') {
      return deserialize<_i3.Comment>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'LocationCoords') {
      return deserialize<_i5.LocationCoords>(data['data']);
    }
    if (data['className'] == 'Person') {
      return deserialize<_i6.Person>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i7.Product>(data['data']);
    }
    if (data['className'] == 'Rating') {
      return deserialize<_i8.Rating>(data['data']);
    }
    if (data['className'] == 'Review') {
      return deserialize<_i9.Review>(data['data']);
    }
    if (data['className'] == 'Service') {
      return deserialize<_i10.Service>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
