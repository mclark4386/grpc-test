///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library proto_blockchain_pbgrpc;

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'blockchain.pb.dart';
export 'blockchain.pb.dart';

class BlockchainClient extends Client {
  static final _$addBlock = new ClientMethod<AddBlockRequest, AddBlockResponse>(
      '/proto.Blockchain/AddBlock',
      (AddBlockRequest value) => value.writeToBuffer(),
      (List<int> value) => new AddBlockResponse.fromBuffer(value));
  static final _$getBlockchain =
      new ClientMethod<GetBlockchainRequest, GetBlockchainResponse>(
          '/proto.Blockchain/GetBlockchain',
          (GetBlockchainRequest value) => value.writeToBuffer(),
          (List<int> value) => new GetBlockchainResponse.fromBuffer(value));

  BlockchainClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<AddBlockResponse> addBlock(AddBlockRequest request,
      {CallOptions options}) {
    final call = $createCall(_$addBlock, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<GetBlockchainResponse> getBlockchain(
      GetBlockchainRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$getBlockchain, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class BlockchainServiceBase extends Service {
  String get $name => 'proto.Blockchain';

  BlockchainServiceBase() {
    $addMethod(new ServiceMethod(
        'AddBlock',
        addBlock_Pre,
        false,
        false,
        (List<int> value) => new AddBlockRequest.fromBuffer(value),
        (AddBlockResponse value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod(
        'GetBlockchain',
        getBlockchain_Pre,
        false,
        false,
        (List<int> value) => new GetBlockchainRequest.fromBuffer(value),
        (GetBlockchainResponse value) => value.writeToBuffer()));
  }

  Future<AddBlockResponse> addBlock_Pre(
      ServiceCall call, Future<AddBlockRequest> request) async {
    return addBlock(call, await request);
  }

  Future<GetBlockchainResponse> getBlockchain_Pre(
      ServiceCall call, Future<GetBlockchainRequest> request) async {
    return getBlockchain(call, await request);
  }

  Future<AddBlockResponse> addBlock(ServiceCall call, AddBlockRequest request);
  Future<GetBlockchainResponse> getBlockchain(
      ServiceCall call, GetBlockchainRequest request);
}
