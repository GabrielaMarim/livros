<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inserir Lançamento Contábil</title>
    <style>
        body { font-family: Arial, sans-serif; background:rgb(240, 151, 213); }
        .container { max-width: 500px; margin: 40px auto; background: #fff; padding: 30px; border-radius: 8px; box-shadow: 0 2px 8px #ccc; }
        h2 { text-align: center; color: #333; }
        label { display: block; margin-top: 15px; color: #444; }
        input, select, textarea { width: 100%; padding: 8px; margin-top: 5px; border-radius: 4px; border: 1px solid #ccc; }
        button { margin-top: 20px; width: 100%; padding: 10px; background: #74aae4; color: #fff; border: none; border-radius: 4px; font-size: 16px; cursor: pointer; }
        button:hover { background:rgb(18, 112, 212); }
        .msg { margin-top: 20px; text-align: center; }
       
    </style>
</head>
<body>
    <div class="container">
        <h2>Novo Lançamento Contábil</h2>
        <form id="lancamentoForm" method="POST" action="inserir_lancamento.php">
             <label for="data">Data</label>
            <input type="date" id="data" name="lanc_data" required>
            
<?php
            $conn = new mysqli("localhost", "root", "", "ctb");
            
                //Conexão com o banco de dados (ajuste os dados conforme necessário)
                
            if ($conn->connect_error) {
                die("Erro de conexão: " . $conn->connect_error);
            }

            
            $sql = "SELECT * FROM `contas` WHERE CT_sintetica = 0";
            $result = $conn->query($sql);
 ?>

            <label for="conta">Conta</label>
            <select id="conta" name="lanc_conta" required>
                <option value="">Selecione a conta</option>
                
<?php
                if ($result && $result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        $label = $row['CT_nome'];
                        $value = $row['CT_id'];
                        echo "<option value=\"" . htmlspecialchars($value) . "\">" . htmlspecialchars($label) . "</option>";
                    }
                }
?>
            </select>
            <?php
            $conn->close();
            ?>
           
<label for="tipo">Tipo</label>
            <select id="tipo" name="lanc_dc" required>
                <option value="">Selecione</option>
                <option value="Débito">Débito</option>
                <option value="Crédito">Crédito</option>
            </select>

            <label for="valor">Valor (R$)</label>
            <input type="number" id="valor" name="lanc_valor" step="0.01" min="0" required>

            <label for="historico">Histórico</label>
            <textarea id="historico" name="lanc_historico" rows="1" required></textarea>
            

            <button type="submit">Inserir Lançamento</button>
        </form>
        <div class="msg">
            <?php
           
            if (isset($_GET['msg'])) {
                echo htmlspecialchars($_GET['msg']);
            }
            ?>
        </div>
    </div>
</body>
</html>