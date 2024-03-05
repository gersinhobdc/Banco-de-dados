<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<title>Formulário inserindo dados em uma tabela</title>	
</head>
<body>
	<form action="inserir_dados.php" method="post">

				
		Nome: <input type="text" name="nome"> </p>
		
		Sobrenome: <input type="text" name="sobrenome"></p>
		
		Idade: <input type="text" name="idade"> </p>
		
		<input type="submit" value="Enviar">

<?php
	// Criando uma conexão com a base de dados bd_exemplo
	$con = mysqli_connect("localhost", "root","", "dbPessoa");

	// Checando a conexão
	if (mysqli_connect_errno()) {
		echo "Erro ao conectar com a base de dados: ".

mysqli_connect_error();

}

?>
</form>


</body>
</html>
