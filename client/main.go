package main

import (
	"flag"
	"log"
	"time"

	"github.com/mclark4386/grpc-test/proto"
	"golang.org/x/net/context"
	"google.golang.org/grpc"
)

var client proto.BlockchainClient

func main() {
	addFlag := flag.Bool("add", false, "add new block")
	listFlag := flag.Bool("list", false, "get the blockchain")
	flag.Parse()

	conn, err := grpc.Dial("localhost:8080", grpc.WithInsecure())
	if err != nil {
		log.Fatalf("cannot dial server: %v", err)
	}

	client = proto.NewBlockchainClient(conn)
	if *addFlag {
		addBlock()
	}
	if *listFlag {
		getBlockchain()
	}
}

func addBlock() {
	block, err := client.AddBlock(context.Background(), &proto.AddBlockRequest{
		Data: time.Now().String(),
	})
	if err != nil {
		log.Fatalf("Unable to add block:%v", err)
	}
	log.Printf("new block hash: %s\n", block.Hash)
}

func getBlockchain() {
	blockchain, err := client.GetBlockchain(context.Background(), &proto.GetBlockchainRequest{})
	if err != nil {
		log.Fatalf("Unable to get blockchain:%v", err)
	}
	log.Printf("blockchain contains %d blocks: %v\n\n", len(blockchain.Blocks), blockchain.Blocks)
	for _, b := range blockchain.Blocks {
		log.Printf("hash: %s, prev Block hhash: %s, data: %s\n", b.Hash, b.PrevBlockHash, b.Data)
	}
}
