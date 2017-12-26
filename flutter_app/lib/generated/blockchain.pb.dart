///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library proto_blockchain;

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class AddBlockRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AddBlockRequest')
    ..a<String>(1, 'data', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  AddBlockRequest() : super();
  AddBlockRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AddBlockRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AddBlockRequest clone() => new AddBlockRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AddBlockRequest create() => new AddBlockRequest();
  static PbList<AddBlockRequest> createRepeated() => new PbList<AddBlockRequest>();
  static AddBlockRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAddBlockRequest();
    return _defaultInstance;
  }
  static AddBlockRequest _defaultInstance;
  static void $checkItem(AddBlockRequest v) {
    if (v is! AddBlockRequest) checkItemFailed(v, 'AddBlockRequest');
  }

  String get data => $_get(0, 1, '');
  set data(String v) { $_setString(0, 1, v); }
  bool hasData() => $_has(0, 1);
  void clearData() => clearField(1);
}

class _ReadonlyAddBlockRequest extends AddBlockRequest with ReadonlyMessageMixin {}

class AddBlockResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AddBlockResponse')
    ..a<String>(1, 'hash', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  AddBlockResponse() : super();
  AddBlockResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AddBlockResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AddBlockResponse clone() => new AddBlockResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AddBlockResponse create() => new AddBlockResponse();
  static PbList<AddBlockResponse> createRepeated() => new PbList<AddBlockResponse>();
  static AddBlockResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyAddBlockResponse();
    return _defaultInstance;
  }
  static AddBlockResponse _defaultInstance;
  static void $checkItem(AddBlockResponse v) {
    if (v is! AddBlockResponse) checkItemFailed(v, 'AddBlockResponse');
  }

  String get hash => $_get(0, 1, '');
  set hash(String v) { $_setString(0, 1, v); }
  bool hasHash() => $_has(0, 1);
  void clearHash() => clearField(1);
}

class _ReadonlyAddBlockResponse extends AddBlockResponse with ReadonlyMessageMixin {}

class GetBlockchainRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetBlockchainRequest')
    ..hasRequiredFields = false
  ;

  GetBlockchainRequest() : super();
  GetBlockchainRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetBlockchainRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetBlockchainRequest clone() => new GetBlockchainRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetBlockchainRequest create() => new GetBlockchainRequest();
  static PbList<GetBlockchainRequest> createRepeated() => new PbList<GetBlockchainRequest>();
  static GetBlockchainRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGetBlockchainRequest();
    return _defaultInstance;
  }
  static GetBlockchainRequest _defaultInstance;
  static void $checkItem(GetBlockchainRequest v) {
    if (v is! GetBlockchainRequest) checkItemFailed(v, 'GetBlockchainRequest');
  }
}

class _ReadonlyGetBlockchainRequest extends GetBlockchainRequest with ReadonlyMessageMixin {}

class Block extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Block')
    ..a<String>(1, 'hash', PbFieldType.OS)
    ..a<String>(2, 'prevBlockHash', PbFieldType.OS)
    ..a<String>(3, 'data', PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  Block() : super();
  Block.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Block.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Block clone() => new Block()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Block create() => new Block();
  static PbList<Block> createRepeated() => new PbList<Block>();
  static Block getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyBlock();
    return _defaultInstance;
  }
  static Block _defaultInstance;
  static void $checkItem(Block v) {
    if (v is! Block) checkItemFailed(v, 'Block');
  }

  String get hash => $_get(0, 1, '');
  set hash(String v) { $_setString(0, 1, v); }
  bool hasHash() => $_has(0, 1);
  void clearHash() => clearField(1);

  String get prevBlockHash => $_get(1, 2, '');
  set prevBlockHash(String v) { $_setString(1, 2, v); }
  bool hasPrevBlockHash() => $_has(1, 2);
  void clearPrevBlockHash() => clearField(2);

  String get data => $_get(2, 3, '');
  set data(String v) { $_setString(2, 3, v); }
  bool hasData() => $_has(2, 3);
  void clearData() => clearField(3);
}

class _ReadonlyBlock extends Block with ReadonlyMessageMixin {}

class GetBlockchainResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetBlockchainResponse')
    ..pp<Block>(1, 'blocks', PbFieldType.PM, Block.$checkItem, Block.create)
    ..hasRequiredFields = false
  ;

  GetBlockchainResponse() : super();
  GetBlockchainResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetBlockchainResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetBlockchainResponse clone() => new GetBlockchainResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetBlockchainResponse create() => new GetBlockchainResponse();
  static PbList<GetBlockchainResponse> createRepeated() => new PbList<GetBlockchainResponse>();
  static GetBlockchainResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGetBlockchainResponse();
    return _defaultInstance;
  }
  static GetBlockchainResponse _defaultInstance;
  static void $checkItem(GetBlockchainResponse v) {
    if (v is! GetBlockchainResponse) checkItemFailed(v, 'GetBlockchainResponse');
  }

  List<Block> get blocks => $_get(0, 1, null);
}

class _ReadonlyGetBlockchainResponse extends GetBlockchainResponse with ReadonlyMessageMixin {}

