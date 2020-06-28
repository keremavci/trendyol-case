# Trendyol Case

Ortamı bu repodan tekrar oluşturmak için aşağıdaki adımlar takip edilmeli.

  - Case-1 içindeki alt klasörlerde olan bash scriptler sırayla çalıştırılmalı.
  - Common-Server-2-3 klasörü altındaki bootsrap.sh çalıştırılarak Server 2 ve 3'e (Node3 ve Node4) gerekli kurumlar tamamlanmalı.
  - Diğer caseler çalıştırılır.
  
NOT:Gitlab CI için ANSIBLE_HOST_KEY_CHECKING=false ve ANSIBLE_SSH_PRIVATE_KEY=$(cat tycase.pem) değişkenleri GITLAB'e eklenmeli.
