# 온라인서점
price = 20000
discount = 10
delivery = 3000
if delivery > 2000 :
    delivery = (int)(delivery*(1-0.02)) 
pay = (int)(price*(100-discount)/100+delivery)
print("결제금액은?",pay)
