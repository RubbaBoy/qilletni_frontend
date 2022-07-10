///
//  Generated code. Do not modify.
//  source: events/error_response.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use responseErrorDescriptor instead')
const ResponseError$json = const {
  '1': 'ResponseError',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ResponseError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseErrorDescriptor = $convert.base64Decode('Cg1SZXNwb25zZUVycm9yEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USEgoEY29kZRgCIAEoBVIEY29kZQ==');
