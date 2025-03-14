(define-public (calculate-rewards (amount uint) (days uint))
  (let
    (
      (rewardRate u10) ;; 10 tokens per day per 1000 stacked
      (rewards (* amount days rewardRate))
    )
    (ok (/ rewards u1000))
  )
)