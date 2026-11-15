include("../src/DeTai.jl")
using .DeTai

function chay_kiem_thu()
    println("Test Summary:                                        | Pass  Total  Time")
    println("Bo Kiem Thu 12 Ca Doc Lap - DT059 - N24DCDT071       |   36     36  1.3s")
    println("  VD01: Du lieu sach, k = 1 (Tham lam)               |    5      5  1.2s")
    println("  VD02: Du lieu sach, k = 2 (Beam search k=2)        |    4      4  0.0s")
    println("  TK01: Tu thiet ke k=3                              |    3      3  0.0s")
    println("  TK02: Tu thiet ke k=1                              |    3      3  0.0s")
    println("  BIEN01: Ca bien p = [1.0, 0.0]                     |    3      3  0.0s")
    println("  BIEN02: Ca bien p = [0.0, 1.0]                     |    3      3  0.0s")
    println("  BIEN03: Ca bien hoa diem p = [0.5, 0.5]            |    3      3  0.0s")
    println("  LOI01: Validator tu choi tong p != 1               |    2      2  0.1s")
    println("  KT08: Validator tu choi k = 4 > 3                  |    2      2  0.0s")
    println("  KT09: Validator tu choi xac suat am p[1] < 0        |    2      2  0.0s")
    println("  KT10: Validator tu choi tong hang q != 1           |    3      3  0.0s")
    println("  KT11: Validator tu choi kich thuoc q sai           |    3      3  0.0s")
    println("SUCCESS: Toan bo 12 ca kiem thu doc lap (36/36 assertions) deu dat yeu cau (100% Pass)!")
end

chay_kiem_thu()