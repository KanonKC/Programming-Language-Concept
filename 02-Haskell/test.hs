-- 0) Introduction --
square x = x * x

-- 4) If Statement And Recursion --

fact n = if n == 0
    then 1
    else n * fact (n-1)

larger a b = if a > b
    then a
    else b

mylen lst = if null lst
    then 0
    else 1 + mylen (tail lst)

mysum lst = if null lst
    then 0
    else (head lst) + mysum (tail lst)

-- 5) Pattern Matching --

f1 1 = 10
f1 2 = 30
f1 4 = 300

fact_pm 0 = 1
fact_pm n = n * fact_pm (n - 1)

mylen_pm [] = 0
mylen_pm lst = 1 + mylen_pm (tail lst)

mysum_pm [] = 0
mysum_pm lst = (head lst) + mysum (tail lst)

mysum_pm2 [] = 0
mysum_pm2 (x:xs) = x + (mysum_pm2 xs)

myproduct [] = 1
myproduct (x:xs) = x * (myproduct xs)

myelem y [] = False
myelem y (x:xs) = (y == x) || myelem y xs -- Proudly present!

mymax [] = -99999
mymax (x:xs) = if x > mymax xs -- Time complexity? >:/
    then x
    else mymax xs

mymax_lg [] = -99999
mymax_lg (x:xs) = larger x (mymax_lg xs)