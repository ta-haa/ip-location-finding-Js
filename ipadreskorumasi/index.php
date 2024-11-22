 <?php
 //////////////////////////////////////////////////////////////////////////////////////
 //KOD BÜYÜK İHTİMAL ÇALIŞIYOR LOCALHOSTTA OLDUĞUMUZ İÇİN SQL KISMINA 0.0.0.0 BASIYOR//
 //////////////////////////////////////////////////////////////////////////////////////
function getUserIpAddr() {
    // Önce IP adresini almak için sırasıyla HTTP başlıkları kontrol edilir.
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        // Birden fazla IP adresi olabilir, en güvenilir olanı alın.
        $ipArray = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
        $ip = trim($ipArray[0]);
    } else {
        $ip = $_SERVER['REMOTE_ADDR'];
    }

    // IP adresinin geçerli bir IPv4 adresi olup olmadığını kontrol et
    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4)) {
        return $ip;
    }

    // Eğer IP adresi geçerli değilse, boş döndür
    return '0.0.0.0';
}




// Fonksiyon: IP adresini veritabanına kaydetmek
function saveIpAddress($conn, $ip) {
    $sql = "INSERT INTO ipadreskontrol (ip_address) VALUES (?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $ip);

    if ($stmt->execute()) {
        return "IP adresi kaydedildi.";
    } else {
        return "Hata: " . $stmt->error;
    }
}

// Fonksiyon: IP adresini kontrol etmek
function checkIpAddress($conn, $ip) {
    $sql = "SELECT * FROM ipadreskontrol WHERE ip_address = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $ip);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        return "IP adresiniz sisteme kaydedilmiştir.";
    } else {
        return "IP adresiniz kaydedilmemiş.";
    }
}
 
include("connect.php");

// Kullanıcı IP adresini al
$user_ip = getUserIpAddr();
echo "Kullanıcı IP Adresi: " . $user_ip . "<br>";

// IP adresini kaydet
echo saveIpAddress($conn, $user_ip) . "<br>";

// IP adresini kontrol et
echo checkIpAddress($conn, $user_ip) . "<br>";

 
?>