# Area and Volume Auto Promotion
@test  1inch^2 + 0ft^2 === 1inch^2
@test  1.0ft^3 + 0.0inch^3 === 1.0ft^3

# Weight Auto Promotion
@test 1.0kip/ft^3 + 0.0kip/inch^3 === 1.0kcf

# Force Auto Promotion
@test 1.0kip + 0.0u"lbf" === 1.0kip

# Moment Auto Promotion
@test 1.0kip*ft + 0.0kip*inch === 1.0kip*ft

# Stress Auto Promotion
@test 1.0ksi + 0.0ksf === 1.0ksi

# Linear Weight Auto Promotion
@test 1.0kip/ft + 0.0kip/inch === 1.0klf
