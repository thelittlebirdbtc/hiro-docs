(define-public (calculate-interest (principal uint) (rate uint) (time uint))
  (let (
    (scaled-rate (/ rate u100))  ;; Convert percentage to decimal
    (interest (/ (* principal scaled-rate time) u365))  ;; Simple interest formula
  )
  (ok interest))
)

;; Usage: calculate interest for 1000 tokens at 5% APR for 30 days
(calculate-interest u1000 u5 u30)