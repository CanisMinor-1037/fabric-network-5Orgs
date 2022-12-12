# 进入cli容器
docker exec -it fabric-cli bash

# in fabric-cli
export APP_CHANNEL=mychannel
export TIMEOUT=60
export CORE_PEER_LOCALMSPID=Org0MSP
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp

peer channel create -o orderer0.example.com:7050 \
-c ${APP_CHANNEL} -f "/tmp/channel-artifacts/${APP_CHANNEL}.tx" \
--timeout "${TIMEOUT}s" \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

mv ${APP_CHANNEL}.block /tmp/channel-artifacts/