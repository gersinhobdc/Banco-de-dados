<?php

	$localhost = 'localhost';
	$user_name = 'root';
	$senha = "";
	$db = "dbPessoa";


	$con = mysqli_connect($localhost,$user_name,$senha,$db);
	
		if (mysqli_connect_errno()){
	
			echo "Erro ao conectar com o banco de dados: " . mysqli_connect_error();
	
		}else{
	
			$sql = "INSERT INTO pessoa(nome,sobrenome,idade)VALUES('$_POST[nome]','$_POST[sobrenome]','$_POST[idade]')";
	
		if(mysqli_query($con,$sql)){
	
			echo "Pessoa inserida com sucesso!!!";

			$mostrar = "select nome, sobrenome, idade from pessoa";

			echo "<h2>Pessoas</h2>";

			$resultado = mysqli_query($con,$mostrar);

			while ($pessoa = mysqli_fetch_array($resultado) ) {
				echo $pessoa['nome'] . " " . $pessoa['sobrenome'] . " " . $pessoa['idade'] . "<br />";
			}
	
		}else{
	
			echo "Erro ao inserir: ".mysqli_error($con);
	
		}


	
		mysqli_close($con);
	}
?>