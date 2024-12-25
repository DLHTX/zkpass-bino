## zkPass bino
source .env

forge script script/Deploy.s.sol \
    --rpc-url iotex-testnet \
    --broadcast \
    --legacy \
    --private-key $PRIVATE_KEY \
    --gas-limit 50000000 \
    --gas-price 200000000000 \
    --slow \
    --skip-simulation \
    --retries 3 \
    -vvvv

InvalidEndTimestamp(): 0x417de2db
ZeroAddress(): 0xd92e233d
ClaimEnded(): 0x4f184b7e
ClaimedAccount(address): 0xc647f06d
ClaimedProof(): 0x652d42a2
InvalidRewardProof(): 0xbb5b3fca
InvalidValidator(address): 0x11d5c560