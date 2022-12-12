# enter fabric-cli
docker exec -it fabric-cli bash

# in fabric-cli
export CCNAME=fabcar-go
export APP_CHANNEL=mychannel
cd /etc/hyperledger/fabric/chaincodes/

cd $CCNAME
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
go mod vendor

# package chaincode
cd ..

peer lifecycle chaincode package ${CCNAME}.tar.gz \
--path ./${CCNAME} \
--lang golang \
--label ${CCNAME}_1

# install chaincode
# peer0.org0
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer0.org0.example.com:7051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer1.org0
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer1.org0.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer1.org0.example.com:8051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer0.org1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer0.org1.example.com:9051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer1.org1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer1.org1.example.com:10051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer0.org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer0.org2.example.com:11051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer1.org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer1.org2.example.com:12051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer0.org3
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer0.org3.example.com:13051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer1.org3
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer1.org3.example.com:14051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer0.org4
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org4MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
export CORE_PEER_ADDRESS=peer0.org4.example.com:15051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# peer1.org4
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org4MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
export CORE_PEER_ADDRESS=peer1.org4.example.com:16051

peer lifecycle chaincode install ${CCNAME}.tar.gz

# query id of package
peer lifecycle chaincode queryinstalled
# Output:
# fabcar-go_1:7b510fa559f82c7c261962c16fe87103a0cbb6e9a02fe43ea08f333d62c5ed25
export CC_PACKAGE_ID=fabcar-go_1:7b510fa559f82c7c261962c16fe87103a0cbb6e9a02fe43ea08f333d62c5ed25

# approveformyorg
export SEQ=1

# org0
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer0.org0.example.com:7051

peer lifecycle chaincode approveformyorg -o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--package-id ${CC_PACKAGE_ID} \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# org1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer0.org1.example.com:9051

peer lifecycle chaincode approveformyorg -o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--package-id ${CC_PACKAGE_ID} \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer0.org2.example.com:11051

peer lifecycle chaincode approveformyorg -o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--package-id ${CC_PACKAGE_ID} \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# org3
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer0.org3.example.com:13051

peer lifecycle chaincode approveformyorg -o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--package-id ${CC_PACKAGE_ID} \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# org4
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org4MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
export CORE_PEER_ADDRESS=peer0.org4.example.com:15051

peer lifecycle chaincode approveformyorg -o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--package-id ${CC_PACKAGE_ID} \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# checkcommitreadiness
peer lifecycle chaincode checkcommitreadiness \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--sequence ${SEQ} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
--output json

# commit chaincode to channel
peer lifecycle chaincode commit \
-o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--version 1.0 \
--sequence $SEQ \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
--peerAddresses peer0.org0.example.com:7051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt \
--peerAddresses peer0.org1.example.com:9051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt \
--peerAddresses peer0.org2.example.com:11051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt \
--peerAddresses peer0.org3.example.com:13051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt \
--peerAddresses peer0.org4.example.com:15051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt

# querycommitted
peer lifecycle chaincode querycommitted \
-o orderer0.example.com:7050 \
--channelID ${APP_CHANNEL} \
--name ${CCNAME} \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem

# query
peer chaincode query \
-C ${APP_CHANNEL} \
-n ${CCNAME} \
-c '{"Args":["QueryAllCars"]}'

# invoke
peer chaincode invoke \
-o orderer0.example.com:7050 \
--ordererTLSHostnameOverride orderer0.example.com \
--tls --cafile /etc/hyperledger/fabric/crypto-config/ordererOrganizations/example.com/orderers/orderer0.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
-C ${APP_CHANNEL} \
-n ${CCNAME} \
--peerAddresses peer0.org0.example.com:7051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt \
--peerAddresses peer0.org1.example.com:9051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt \
--peerAddresses peer0.org2.example.com:11051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt \
--peerAddresses peer0.org3.example.com:13051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt \
--peerAddresses peer0.org4.example.com:15051 \
--tlsRootCertFiles /etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt \
-c '{"function":"InitLedger","Args":[""]}'