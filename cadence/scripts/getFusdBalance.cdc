import FungibleToken from "../contracts/core/FungibleToken.cdc"
import FUSD from "../contracts/core/FUSD.cdc"

pub fun main(address: Address): UFix64 {
    let account = getAccount(address)
    let vault = account.getCapability<&FUSD.Vault{FungibleToken.Balance}>(/public/fusdBalance).borrow()
      ?? panic("Could not borrow fusd vault ref")
    return vault.balance
}