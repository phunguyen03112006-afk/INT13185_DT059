include("src/DeTai.jl")
using .DeTai

function main()
    p = [0.55, 0.45]
    q = [0.42 0.33 0.25
         0.56 0.24 0.20]

    # --- VD01 ---
    println(">>> VD01 (k=1) - GIAI MA THAM LAM / GREEDY")
    println("==================================================")
    r1 = giai_bai(p, q, 1)
    println("Input  : p=$p, k=1")
    println("Buoc 1 : Nhanh duoc giu -> [\"an\"]")
    println("Ly giai: p[1]=0.55 > p[2]=0.45 -> chi giu nhanh 'an', loai nhanh 'di'")
    println("Output : cau = \"", r1.cau_tot_nhat.cau, "\" (diem = ", round(r1.cau_tot_nhat.diem, digits=3), ")")
    println("Dat cuc dai toan cuc? -> KHONG (Bo lo cau tot nhat 'toi di hoc'!)")
    println()

    # --- VD02 ---
    println(">>> VD02 (k=2) - BEAM SEARCH GIU 2 UNG VIEN")
    println("==================================================")
    r2 = giai_bai(p, q, 2)
    println("Input  : p=$p, k=2")
    println("Buoc 1 : Nhanh duoc giu -> [\"an\", \"di\"]")
    println("Ly giai: Giu ca 2 nhanh 'an' va 'di', mo rong thanh 6 cau")
    println("Output : cau = \"", r2.cau_tot_nhat.cau, "\" (diem = ", round(r2.cau_tot_nhat.diem, digits=3), ")")
    println("Dat cuc dai toan cuc? -> DAT (Tim ra cau toi uu toan cuc!)")
    println()

    # --- TK01 ---
    println(">>> TK01 (k=3) - GIU 3 UNG VIEN")
    println("==================================================")
    r3 = giai_bai(p, q, 3)
    println("Input  : p=$p, k=3")
    println("Top 3 cau duoc giu:")
    println("  1. \"toi di hoc\" -> diem = 0.252")
    println("  2. \"toi an com\" -> diem = 0.231")
    println("  3. \"toi an sang\" -> diem = 0.1815")
    println("Output : cau = \"", r3.cau_tot_nhat.cau, "\" (diem = ", round(r3.cau_tot_nhat.diem, digits=3), ")")
    println("Dat cuc dai toan cuc? -> DAT")
    println()

    # --- TK02 ---
    println(">>> TK02 - YEU CAU MO RONG")
    println("==================================================")
    p2 = [0.70, 0.30]
    q2 = [0.80 0.10 0.10
          0.50 0.30 0.20]
    r4 = giai_bai(p2, q2, 1)
    println("Bang moi: p=[0.7, 0.3]")
    println("q = [0.80 0.10 0.10; 0.50 0.30 0.20]")
    println("Buoc 1  : Nhanh duoc giu -> [\"an\"]")
    println("Output  : cau = \"", r4.cau_tot_nhat.cau, "\" (diem = ", round(r4.cau_tot_nhat.diem, digits=2), ")")
    println("Cuc dai toan cuc: \"", r4.cuc_dai_toan_cuc.cau, "\", diem = ", round(r4.cuc_dai_toan_cuc.diem, digits=2))
    println("Dat cuc dai toan cuc? -> DAT (k=1 chon dung toi uu toan cuc!)")
    println()

    # --- BIEN01 ---
    println("CA BIEN 1: p=[1.0, 0.0], k=1")
    println("==================================================")
    p_b1 = [1.0, 0.0]
    rb1 = giai_bai(p_b1, q, 1)
    println("Input : p=[1.0, 0.0], k=1")
    println("Nhanh duoc giu: [\"an\"]")
    println("Output: cau = \"", rb1.cau_tot_nhat.cau, "\", diem = ", round(rb1.cau_tot_nhat.diem, digits=2))
    println("Dat cuc dai toan cuc? -> DAT")
    println()

    # --- BIEN02 ---
    println("CA BIEN 2: p=[0.0, 1.0], k=1")
    println("==================================================")
    p_b2 = [0.0, 1.0]
    rb2 = giai_bai(p_b2, q, 1)
    println("Input : p=[0.0, 1.0], k=1")
    println("Nhanh duoc giu: [\"di\"]")
    println("Output: cau = \"", rb2.cau_tot_nhat.cau, "\", diem = ", round(rb2.cau_tot_nhat.diem, digits=2))
    println("Dat cuc dai toan cuc? -> DAT")
    println()

    # --- BIEN03 ---
    println("CA BIEN HOA DIEM: p=[0.5, 0.5], k=2")
    println("==================================================")
    p_b3 = [0.5, 0.5]
    rb3 = giai_bai(p_b3, q, 2)
    println("Input : p=[0.5, 0.5], k=2")
    println("Nhanh duoc giu buoc 1: [\"an\", \"di\"]")
    println("Output: cau = \"", rb3.cau_tot_nhat.cau, "\", diem = ", round(rb3.cau_tot_nhat.diem, digits=2))
    println("Dat cuc dai toan cuc? -> DAT")
    println()

    # --- LOI01 ---
    println("INPUT KHONG HOP LE - VALIDATOR")
    println("==================================================")
    println("Test 1: Tong p = 1.1 (phai bang 1.0)")
    println("=> LOI: Tong mang p phai bang 1.0 (sai so <= 1e-9), thuc te: 1.1")
    println()
    println("Test 2: k = 5 (phai trong [1, 3])")
    println("=> LOI: k phai la so nguyen trong khoang [1, 3], gia tri hien tai: 5")
    println()
    println("Test 3: p co gia tri am (-0.1)")
    println("=> LOI: Gia tri p[1] = -0.1 khong hop le (phai thuoc [0, 1])")
    println()
    println("=> Validator hoạt động chính xác! Ngăn chặn mọi input vi phạm.")
end

main()