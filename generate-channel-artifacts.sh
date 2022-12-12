export APP_CHANNEL=mychannel
# 生成创世区块
configtxgen -configPath . -profile FiveOrgsOrdererGenesis -channelID fabric-channel -outputBlock ./channel-artifacts/orderer.genesis.block
# 生成通道文件
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -outputCreateChannelTx ./channel-artifacts/${APP_CHANNEL}.tx
#生成锚节点配置更新文件
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -asOrg Org0MSP -outputAnchorPeersUpdate ./channel-artifacts/Org0MSPanchors.tx
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -asOrg Org1MSP -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -asOrg Org2MSP -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -asOrg Org3MSP -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors.tx
configtxgen -configPath . -profile FiveOrgsChannel -channelID $APP_CHANNEL -asOrg Org4MSP -outputAnchorPeersUpdate ./channel-artifacts/Org4MSPanchors.tx