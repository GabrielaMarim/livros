<?php
// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ctb";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Recebe os dados do formulário via POST
$lanc_conta     = $_POST['lanc_conta'];
$lanc_valor     = $_POST['lanc_valor'];
$lanc_historico = $_POST['lanc_historico'];
$lanc_data      = $_POST['lanc_data'];
$lanc_dc        = $_POST['lanc_dc'];

// Prepara e executa a inserção
$sql = "INSERT INTO lancamento (lanc_conta, lanc_valor, lanc_historico, lanc_data, lanc_dc) VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("idsss", $lanc_conta, $lanc_valor, $lanc_historico, $lanc_data, $lanc_dc);

if ($stmt->execute()) {
    echo "<script>alert('lançamento inserido'); window.location.href='index.php';</script>";
} else {
    echo "<script>alert('Erro ao inserir lançamento'); window.location.href='index.php';</script>";
}

$stmt->close();
$conn->close();
?>