<?php
require 'connect.php';

if (isset($_GET['customer_id'])) {
    $customerId = $_GET['customer_id'];

    // Lấy danh sách đơn hàng chưa hoàn thành cho khách hàng này, tính công nợ còn lại
    $stmt = $conn->prepare("
        SELECT OCode, TotalPrice, Status, 
        COALESCE(TotalPrice - (SELECT SUM(Amount) 
                               FROM customer_partialpayments 
                               WHERE OCode = orders.OCode), TotalPrice) AS RemainingBalance
        FROM orders 
        WHERE CusId = ? AND Status != 'paid'
        ORDER BY OrderTime DESC
    ");
    $stmt->execute([$customerId]);
    $orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Trả kết quả dưới dạng JSON
    header('Content-Type: application/json');
    echo json_encode($orders);
    exit();
} else {
    // Nếu không có customer_id, trả về lỗi
    echo json_encode(['error' => 'Customer ID not provided']);
    exit();
}
