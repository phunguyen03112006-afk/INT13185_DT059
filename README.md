<<<<<<< HEAD
# [MÃ ĐỀ TÀI] — [TÊN ĐỀ TÀI ĐƯỢC GIAO]

**Khung chưa có thuật toán và chưa có test đạt.** Các lệnh demo/test hiện dừng ở
lỗi TODO có chủ đích. Không ghi “đã hoàn thành”, “Pass” hoặc dùng số kiểm tra của
mẫu BFS cho đề tài của mình. Chỉ hoàn thành sau khi thay đúng logic và tự chạy.

## Thông tin và căn cứ

- Họ tên, MSSV, lớp: `[ĐIỀN]`.
- Mã và tên đề tài đúng trong danh sách: `[ĐIỀN]`.
- Giáo trình: `Giao-trinh-Cau-truc-du-lieu-va-Giai-thuat-INT1306.pdf`.
- Chương, mục, bài tập, trang in và trang PDF đúng đề: `[ĐIỀN SAU KHI ĐỐI CHIẾU]`.
- URL GitHub thật: `[ĐIỀN]`; SHA chạy C ghi trong báo cáo và TXT nộp rời.
- Permalink tệp thuật toán tại C: ghi trong báo cáo/TXT; phiên bản Julia: `[ĐIỀN]`.

## Việc phải thay trước khi nộp

1. Đọc phiếu đề tài cá nhân và phần giáo trình liên quan. Không dùng BFS nếu đề
   không phải tìm đường ít cạnh nhất bằng BFS.
2. Viết hợp đồng input/output: kiểu, phạm vi, quy ước chỉ số, trường hợp đặc biệt
   và cách từ chối dữ liệu sai. Dữ liệu khai báo trực tiếp hoặc nhập bàn phím,
   không phụ thuộc CSV hay tệp dữ liệu bên ngoài.
3. Cài `src/DeTai.jl` bằng thuật toán của đề. Đổi tên module/tệp nếu cần và cập
   nhật `include` trong demo/test tương ứng. Giải thích từng cấu trúc dữ liệu.
4. Thay `du_lieu = nothing` ở `demo.jl`; in input và output rõ ràng. Chọn tám
   mục tiêu minh họa A01–A08 theo kế hoạch ảnh. Với miền chương trình chính nhỏ,
   dùng thêm ca hàm con/validator/bất biến đúng đề và giải thích đối tượng kiểm.
5. Thay lỗi TODO trong `test/runtests.jl` bằng ít nhất 12 ca có ID. Ghi đáp án
   kỳ vọng được tính độc lập, kiểm output/bất biến, có ca biên và input sai qua
   validator. Phân biệt số ca và số phép kiểm tra; cập nhật kết quả thật.
6. Tự chụp 11 ảnh A01–A11 theo `docs/anh_ket_qua/README.md`; chèn vào báo cáo có input,
   kỳ vọng, thực tế, phân tích và đường dẫn. Đồng bộ số hình với mục lục hình.
7. Điền đủ 5 chương, bảng kiểm thử, truy vết tay, độ phức tạp, so sánh và hạn
   chế theo mẫu báo cáo. Ghi phần đã sửa so với mã mẫu.

## Chạy sau khi đã cài đặt

Mở terminal tại thư mục repo:

```powershell
julia --version
julia --startup-file=no demo.jl
julia --startup-file=no test/runtests.jl
```

Lệnh thực tế, cấu trúc input và output của bài cá nhân: `[ĐIỀN]`.
Kết quả kiểm thử: `[ĐIỀN SỐ CA, SỐ PHÉP KIỂM TRA, ĐẠT/CHƯA ĐẠT THỰC TẾ]`.
Không đổi lỗi TODO thành `@test true` hoặc in “Pass” để thay cho kiểm thử.

## Công bố mã và kiểm tra bản clone

Tạo repo của mình trên GitHub. Thay `TEN_TAI_KHOAN`, `TEN_REPO` trước khi chạy:

```powershell
git init
git add README.md .gitignore src demo.jl test docs
git commit -m "Hoan thanh de tai va bang chung"
git branch -M main
git remote add origin https://github.com/TEN_TAI_KHOAN/TEN_REPO.git
git push -u origin main
git rev-parse HEAD
```

Clone vào thư mục mới chưa tồn tại rồi chạy lại:

```powershell
git clone https://github.com/TEN_TAI_KHOAN/TEN_REPO.git kiem_tra_ban_nop_MSSV
cd kiem_tra_ban_nop_MSSV
git rev-parse HEAD
julia --version
julia --startup-file=no demo.jl
julia --startup-file=no test/runtests.jl
```

Đây là lệnh hướng dẫn, chưa phải bằng chứng đã chạy. Chụp kết quả thật, ghi URL
repo và commit vào báo cáo. Trên GitHub mở tệp thuật toán, nhấn `y`, sao chép
permalink theo commit. Nếu repo riêng tư, cấp quyền giảng viên trước hạn nộp.
Không đưa token/mật khẩu vào repo hoặc báo cáo.

## Quy ước nộp Classroom

Báo cáo ghi SHA C của mã/test/input dùng tạo kết quả và permalink tại C. Sau khi thêm ảnh/báo cáo, chốt SHA S rồi ghi S trong ThongTinNop.txt nộp rời trên Classroom. Không đưa hash của chính commit vào tệp thuộc commit đó. Nộp đủ Word, PDF, ZIP mã và TXT đúng tên theo `00_HUONG_DAN_SINH_VIEN.html` trong gói phát cho lớp.
=======
# ĐỀ TÀI DT059: CHỌN CÂU NGẮN BẰNG THAM LAM VÀ GIỮ K ỨNG VIÊN

**Báo cáo và mã nguồn đề tài cá nhân môn Cấu trúc dữ liệu và Giải thuật (INT13185 - Nhóm 03)**
**Học kỳ 1 - Năm học 2026-2027 - Học viện Công nghệ Bưu chính Viễn thông (Cơ sở TP.HCM)**

---

## 1. Thông tin sinh viên và đề tài

- **Họ và tên:** Nguyễn Thiên Phú
- **Mã số sinh viên (MSSV):** N24DCDT071
- **Lớp:** D24CQDT01-N
- **Mã đề tài:** **DT059**
- **Tên đề tài:** Chọn câu ngắn bằng tham lam và giữ k ứng viên
- **Giảng viên hướng dẫn:** Thầy Hồ Nhựt Minh
- **Căn cứ giáo trình:** Giáo trình Cấu trúc dữ liệu và Giải thuật (INT1306), Chương 4: Mục 4.4.1 (Mô hình ngôn ngữ hai từ); Mục 4.4.2 (Giải mã tham lam); Mục 4.4.3 (Giải mã theo chùm); Ví dụ 4.10 (Trang in 104–107; trang PDF 116–119).

---

## 2. Cấu trúc thư mục mã nguồn

```
N24DCDT071_DT059_NguyenThienPhu_MaNguon/
├── .gitignore
├── README.md
├── demo.jl
├── src/
│   └── DeTai.jl
├── test/
│   └── runtests.jl
└── docs/
    └── anh_ket_qua/
        ├── 01_vi_du_1.png
        ├── 02_vi_du_2.png
        ├── 03_tu_thiet_ke_1.png
        ├── 04_tu_thiet_ke_2.png
        ├── 05_bien_1.png
        ├── 06_bien_2.png
        ├── 07_bien_3.png
        ├── 08_input_khong_hop_le.png
        ├── 09_tong_ket_kiem_thu.png
        ├── 10_clone_sach_chay_lai.png
        └── 11_github_repo_commit.png
```

---

## 3. Môi trường và yêu cầu thực thi

- **Ngôn ngữ:** Julia (khuyến nghị phiên bản $\ge$ 1.10, đã kiểm thử đạt trên Julia 1.13.0 / 1.13.1).
- **Thư viện:** Chỉ sử dụng thư viện chuẩn của Julia (`Test`), không yêu cầu cài thêm package bên ngoài.

---

## 4. Hướng dẫn các lệnh chạy

### 4.1. Lệnh chạy Demo (Ví dụ 1, Ví dụ 2, Khảo sát k=3 và Bảng vét cạn)
Mở terminal/PowerShell tại thư mục gốc của mã nguồn và gõ:
```bash
julia demo.jl
```

### 4.2. Lệnh chạy Bộ kiểm thử (12 ca kiểm thử độc lập)
```bash
julia test/runtests.jl
```

### 4.3. Chạy tương tác hoặc kiểm tra từng hàm trong Julia REPL
```julia
include("src/DeTai.jl")
using .DeTai

# Chạy với k = 1 (tham lam)
res1 = giai_bai([0.55, 0.45], [0.42 0.33 0.25; 0.56 0.24 0.20], 1)
println(res1.cau_tot_nhat)

# Chạy với k = 2 (beam search)
res2 = giai_bai([0.55, 0.45], [0.42 0.33 0.25; 0.56 0.24 0.20], 2)
println(res2.cau_tot_nhat)
```

---

## 5. Tóm tắt kết quả kiểm thử

- **Tổng số ca kiểm thử độc lập:** 12 ca (TC01 đến TC12).
- **Tổng số phép kiểm tra (`@test`):** 35 phép kiểm tra.
- **Tỷ lệ đạt:** 35 / 35 Passed (100%).
- **Kết quả trọng tâm:**
  - Ví dụ 1 ($k=1$): Chọn câu `"toi an com"`, điểm $0.2310$ (Bỏ lỡ cực đại).
  - Ví dụ 2 ($k=2$): Chọn câu `"toi di hoc"`, điểm $0.2520$ (Đạt cực đại toàn cục).
  - Ca mở rộng: Khi thay $p=[0.7, 0.3]$, $k=1$ chọn đúng cực đại toàn cục `"toi an com"` ($0.5600$).

<!-- Final submission commit S -->

>>>>>>> 5a27a925c5e77c671560e3d36f9b23d974d3a6d8
