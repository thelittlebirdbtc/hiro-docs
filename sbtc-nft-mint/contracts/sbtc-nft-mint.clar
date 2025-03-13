;; this code is for demo purposes
;; it doesn't implement SIP-009 NFT standard
(define-non-fungible-token nft-name uint)

;; mint for 100 sats
(define-data-var sats-sbtc-mint-price uint u100)
(define-data-var next-id uint u0)

(define-public (mint-one-with-sbtc)
  (begin
    ;; call the sbtc-token contract to transfer the sbtcs
    (try! (contract-call? 'SM3VDXK3WZZSA84XXFKAFAF15NNZX32CTSG82JFQ4.sbtc-token transfer
      (var-get sats-sbtc-mint-price)
      tx-sender
      (as-contract tx-sender)
      none
    ))

    (try! (nft-mint? nft-name (var-get next-id) tx-sender))

    (ok (var-set next-id (+ (var-get next-id) u1)))
  )
)