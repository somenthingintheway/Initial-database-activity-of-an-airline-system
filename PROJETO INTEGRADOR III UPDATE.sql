use sistemadeviagens;
UPDATE cliente SET endereco = 'Rua Bossa Nova, 321' WHERE idcliente = 1;
UPDATE compra SET valor = '250.00', status_compra = 'Confirmada' WHERE idcompra = 2;
UPDATE aeronaves SET modelo = 'Airbus A380' WHERE idavioes = 2;
UPDATE viagem SET destino = 'Fortaleza' WHERE idviagem = 4;
UPDATE piloto SET nome_piloto = 'Roberto Piloto' WHERE idpiloto = 2;
UPDATE historico_voos SET descricao = 'Voo atualizado para São Paulo' WHERE idhistorico_voos = 1;
UPDATE piloto_has_viagem SET piloto_idpiloto = 3 WHERE viagem_idviagem = 5;
UPDATE compra_has_viagem set compra_idcompra = 3 WHERE viagem_idviagem = 5;