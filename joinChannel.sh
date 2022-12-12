docker exec -it fabric-cli bash

# in fabric-cli
export APP_CHANNEL=mychannel
# peer0.org0
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer0.org0.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer0.org0.example.com:7051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer1.org0
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/peers/peer1.org0.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org0.example.com/users/Admin@org0.example.com/msp
export CORE_PEER_ADDRESS=peer1.org0.example.com:8051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer0.org1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer0.org1.example.com:9051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer1.org1
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=peer1.org1.example.com:10051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer0.org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer0.org2.example.com:11051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer1.org2
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=peer1.org2.example.com:12051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer0.org3
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer0.org3.example.com:13051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer1.org3
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org3MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/peers/peer1.org3.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
export CORE_PEER_ADDRESS=peer1.org3.example.com:14051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer0.org4
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org4MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer0.org4.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
export CORE_PEER_ADDRESS=peer0.org4.example.com:15051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block

# peer0.org4
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org4MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/peers/peer1.org4.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/crypto-config/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
export CORE_PEER_ADDRESS=peer1.org4.example.com:16051

peer channel join -b /tmp/channel-artifacts/${APP_CHANNEL}.block