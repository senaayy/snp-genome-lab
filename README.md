# 🧬 SNP-Genome-Lab: Genetik Risk Analizi ve Multimodal Yapay Zeka

![Biyoinformatik](https://img.shields.io/badge/Alan-Biyoinformatik-blueviolet)
![Python](https://img.shields.io/badge/Dil-Python%203.11+-blue)
![Docker](https://img.shields.io/badge/Platform-Docker-blue)
![License](https://img.shields.io/badge/Lisans-MIT-green)

Bu proje, **Tek Nükleotid Polimorfizmleri (SNP)** verilerini analiz etmek, **Nörogörüntüleme (MRI)** biyomarkerlarıyla entegre etmek ve hastalık riski tahmini için **Multimodal Yapay Zeka** modelleri geliştirmek amacıyla uçtan uca bir biyoinformatik boru hattı (pipeline) sunar.

## 🚀 Proje Hakkında

Bu çalışma, genetik varyasyonların (Genotip) hastalıklar ve beyin yapısı (Fenotip) üzerindeki etkisini kantitatif olarak ölçmeyi amaçlar. **Imaging Genetics** yaklaşımıyla genetik veri ve tıbbi görüntüleme verisi birleştirilerek teşhis doğruluğu (Accuracy) **%96** seviyesine çıkarılmıştır.

### Ana Özellikler:
- **Veri Simülasyonu:** Biyolojik gerçekliğe uygun (HWE uyumlu) sentetik genetik veri üretimi.
- **İlişki Testleri:** SNP ve hastalık arasındaki bağın Kay-Kare (Chi-Square) testi ile doğrulanması.
- **Imaging Genetics:** Genetik varyasyonların beyin hacmi (Hipokampus) üzerindeki fiziksel etkisinin analizi.
- **Multimodal AI:** Genetik + MRI verisini birlikte işleyen Random Forest modeli ile yüksek doğruluklu tahmin.

---

## 📊 Analiz Bulguları

### 1. GWAS ve Genetik Risk Haritası
Analizlerimizde `rs429358` (APOE geni) varyantının hastalıkla en güçlü ilişkiyi gösterdiği ($P < 10^{-20}$) tespit edilmiştir. Bu varyant, Alzheimer riski için en önemli genetik belirteçtir.

![Manhattan Plot](reports/manhattan_plot.png)

### 2. Imaging Genetics: Genotip-Fenotip İlişkisi
Nörogörüntüleme verileri entegre edildiğinde, riskli varyantı taşıyan bireylerin **Hipokampus hacminde** belirgin bir düşüş (atrofi) gözlemlenmiştir. Aşağıdaki keman grafiği (violin plot), genetik riskin fiziksel yansımasını kanıtlamaktadır.

![Imaging Genetics Plot](reports/imaging_genetics_plot.png)

---

## 🧠 Multimodal Yapay Zeka Performansı

Sadece genetik veriye dayalı modeller ile genetik ve nörogörüntüleme verisini birleştiren **Multimodal** modellerin performansı karşılaştırılmıştır.

| Model Türü | Veri Kaynağı | Doğruluk (Accuracy) | Kesinlik (Precision - Hasta) |
| :--- | :--- | :--- | :--- |
| **Temel Model** | Sadece Genetik (SNP) | ~%78.00 | %80.00 |
| **Multimodal Model** | **Genetik + MRI** | **%96.67** | **%100.00** |

**Sonuç:** Fiziksel kanıtların (MRI) modele eklenmesi, yanlış alarmları (False Positive) tamamen ortadan kaldırmış ve tahmin başarısını dramatik şekilde artırmıştır.

![Model Comparison](reports/model_comparison_plot.png)

---

## 🌐 Gerçek Dünya Verileriyle Doğrulama

Analiz sonuçlarımız akademik literatürle tam uyumludur:
- **APOE (rs429358):** Analizimizde en yüksek riski taşıyan bu varyant, literatürde Alzheimer hastalığının en güçlü genetik belirleyicisidir.
- **Hipokampal Atrofi:** Simülasyonumuzda riskli grupta görülen hacim kaybı, klinik Alzheimer tablolarıyla örtüşmektedir.

![Gelişmiş Manhattan Plot](reports/annotated_manhattan.png)

---

## 🛠️ Teknik Yığın

- **Altyapı:** Docker, Jupyter Lab
- **Programlama:** Python 3.11
- **Veri Analizi:** Pandas, NumPy, Scipy.stats
- **Görselleştirme:** Matplotlib, Seaborn
- **Makine Öğrenmesi:** Scikit-learn (Random Forest, Multimodal Learning)

---

## ⚙️ Hızlı Başlangıç

Projeyi yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin:

1. **Repoyu Klonlayın:**
   ```bash
   git clone [https://github.com/senaayy/snp-genome-lab.git](https://github.com/senaayy/snp-genome-lab.git)
   cd snp-genome-lab
   ```
Docker Konteynerini Başlatın:

```bash
docker-compose up --build
Analize Başlayın:
Tarayıcınızda http://localhost:8888 adresine gidin ve notebooks/ klasöründeki analizleri çalıştırın.
  ```
📁 Proje Yapısı
 ```
 snp-genome-lab/
├── data/               # Ham ve işlenmiş CSV verileri
├── notebooks/          # Jupyter analiz dosyaları
├── reports/            # Grafik ve analiz çıktıları (PNG)
├── Dockerfile          # Konteyner yapılandırması
├── docker-compose.yml  # Servis orkestrasyonu
└── requirements.txt    # Bağımlılıklar
Not: Bu proje eğitim amaçlı geliştirilmiş bir biyoinformatik modellemesidir.
  ```
## 🌐 Gerçek Dünya Verileriyle Doğrulama

Analiz sonuçlarımızı akademik literatürle karşılaştırdığımızda, modelimizin ürettiği risk skorlarının biyolojik gerçeklerle örtüştüğü görülmüştür:

- **APOE (rs429358):** Analizimizde en yüksek anlamlılığı gösteren varyant, gerçekte geç yaşta görülen Alzheimer hastalığının en önemli genetik belirleyicisidir.
- **BDNF (rs6265):** Nöroplastisite ile ilişkili olan bu varyantın modelimizdeki etkisi, literatürdeki bilişsel fonksiyon verileriyle uyumludur.

![Gelişmiş Manhattan Plot](reports/annotated_manhattan.png)

---

## 📩 İletişim

Bu proje hakkında sorularınız, önerileriniz veya iş birliği talepleriniz için bana aşağıdaki kanallardan ulaşabilirsiniz:

- **E-posta:** [240541111@firat.edu.tr](mailto:240541111@firat.edu.tr)
- **Kurum:** Fırat Üniversitesi Teknoloji Fakültesi
- **GitHub:** [senaayy](https://github.com/senaayy)

---
*Bu çalışma, genetik veri analizi ve makine öğrenmesi prensiplerini birleştiren bir mühendislik projesidir.*
