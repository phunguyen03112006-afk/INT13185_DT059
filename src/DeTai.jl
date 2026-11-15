module DeTai

export kiem_tra_dau_vao, ten_cau, liet_ke_sau_cau, giu_k_cau, giai_bai, TU_DAU, NHANH, TU_CUOI

const TU_DAU = "toi"
const NHANH = ["an", "di"]
const TU_CUOI = [
    ["com", "sang", "toi_dem"],   # nhanh "an"
    ["hoc", "lam",  "choi"]      # nhanh "di"
]

"""
    kiem_tra_dau_vao(p, q, k)
Kiểm tra hợp lệ dữ liệu vào theo hợp đồng đề tài DT059:
- p có 2 phần tử, q có kích thước (2, 3)
- Các giá trị không âm và thuộc [0, 1]
- Tổng p bằng 1 (sai số tuyệt đối 1e-9)
- Mỗi hàng của q có tổng bằng 1 (sai số tuyệt đối 1e-9)
- k là số nguyên thuộc {1, 2, 3}
"""
function kiem_tra_dau_vao(p, q, k)
    if length(p) != 2
        error("Mang p phai co dung 2 phan tu (hien co $(length(p)))")
    end
    if size(q) != (2, 3)
        error("Ma tran q phai co kich thuoc 2x3 (hien la $(size(q)))")
    end
    if !(k isa Integer) || !(k in 1:3)
        error("k phai la so nguyen trong khoang [1, 3], gia tri hien tai: $k")
    end
    
    for idx in 1:length(p)
        val = p[idx]
        if !isfinite(val) || val < 0.0 || val > 1.0
            error("Gia tri p[$idx] = $val khong hop le (phai thuoc [0, 1])")
        end
    end

    for i in 1:2, j in 1:3
        val = q[i, j]
        if !isfinite(val) || val < 0.0 || val > 1.0
            error("Gia tri q[$i,$j] = $val khong hop le (phai thuoc [0, 1])")
        end
    end

    if abs(sum(p) - 1.0) > 1e-9
        error("Tong mang p phai bang 1.0 (sai so <= 1e-9), thuc te: $(sum(p))")
    end

    for i in 1:2
        s = sum(q[i, :])
        if abs(s - 1.0) > 1e-9
            error("Tong hang $i cua ma tran q phai bang 1.0, thuc te: $s")
        end
    end

    return true
end

"""
    ten_cau(i, j)
Trả về xâu định danh câu: "toi <nhanh[i]> <tu_cuoi[i][j]>"
"""
function ten_cau(i::Int, j::Int)
    return "$(TU_DAU) $(NHANH[i]) $(TU_CUOI[i][j])"
end

"""
    liet_ke_sau_cau(p, q)
Vét cạn toàn bộ 6 câu bằng 2 vòng lặp để đối chiếu cực đại toàn cục.
"""
function liet_ke_sau_cau(p, q)
    danh_sach = []
    for i in 1:2
        for j in 1:3
            diem = p[i] * q[i, j]
            push!(danh_sach, (cau=ten_cau(i, j), diem=diem, i=i, j=j))
        end
    end
    sort!(danh_sach, by = x -> x.diem, rev = true)
    return danh_sach
end

"""
    giu_k_cau(p, q, k)
Giải thuật Beam Search: Giữ k nhánh ở bước đầu, sau đó mở rộng và giữ k câu tốt nhất.
"""
function giu_k_cau(p, q, k::Int)
    kiem_tra_dau_vao(p, q, k)

    nhanh_cand = [
        (i = 1, ten = NHANH[1], prob = Float64(p[1])),
        (i = 2, ten = NHANH[2], prob = Float64(p[2]))
    ]
    sort!(nhanh_cand, by = x -> x.prob, rev = true)
    nhanh_giu = nhanh_cand[1 : min(k, 2)]

    cau_cand = []
    for n in nhanh_giu
        for j in 1:3
            diem = p[n.i] * q[n.i, j]
            push!(cau_cand, (
                cau     = ten_cau(n.i, j),
                diem    = diem,
                i       = n.i,
                j       = j,
                tien_to = n.ten
            ))
        end
    end
    sort!(cau_cand, by = x -> x.diem, rev = true)
    cac_cau_giu = cau_cand[1 : min(k, length(cau_cand))]

    return (
        k            = k,
        nhanh_giu    = nhanh_giu,
        cac_cau_giu  = cac_cau_giu,
        cau_tot_nhat = cac_cau_giu[1]
    )
end

"""
    giai_bai(p, q, k)
Hàm tổng hợp: chạy Beam Search và đối chiếu vét cạn toàn cục.
"""
function giai_bai(p, q, k::Int)
    vet_can  = liet_ke_sau_cau(p, q)
    beam_res = giu_k_cau(p, q, k)
    return (
        beam             = beam_res,
        vet_can          = vet_can,
        cau_tot_nhat     = beam_res.cau_tot_nhat,
        cuc_dai_toan_cuc = vet_can[1],
        trung_cuc_dai    = (abs(beam_res.cau_tot_nhat.diem - vet_can[1].diem) <= 1e-9)
    )
end

end # module DeTai