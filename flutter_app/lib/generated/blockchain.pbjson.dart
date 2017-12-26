///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes
library proto_blockchain_pbjson;

const AddBlockRequest$json = const {
  '1': 'AddBlockRequest',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
  ],
};

const AddBlockResponse$json = const {
  '1': 'AddBlockResponse',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
  ],
};

const GetBlockchainRequest$json = const {
  '1': 'GetBlockchainRequest',
};

const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'prevBlockHash', '3': 2, '4': 1, '5': 9, '10': 'prevBlockHash'},
    const {'1': 'data', '3': 3, '4': 1, '5': 9, '10': 'data'},
  ],
};

const GetBlockchainResponse$json = const {
  '1': 'GetBlockchainResponse',
  '2': const [
    const {'1': 'blocks', '3': 1, '4': 3, '5': 11, '6': '.proto.Block', '10': 'blocks'},
  ],
};

