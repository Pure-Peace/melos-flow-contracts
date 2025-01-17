import MelosNFT from "../../contracts/MelosNFT.cdc"


// Burn MelosNFT on signer account by tokenId
//
transaction(nftId: UInt64) {
    prepare(account: AuthAccount) {
      let collection = account.borrow<&MelosNFT.Collection>(from: MelosNFT.CollectionStoragePath)!
      collection.burn(nftId: nftId)
    }
}