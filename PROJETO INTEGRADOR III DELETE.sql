use sistemadeviagens;
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM cliente WHERE idcliente = 5;
DELETE FROM compra WHERE idcompra = 4;
DELETE FROM aeronaves WHERE idavioes = 3;
DELETE FROM viagem WHERE idviagem = 2;
DELETE FROM piloto WHERE idpiloto = 1;
DELETE FROM historico_voos WHERE idhistorico_voos = 5;
DELETE FROM compra_has_viagem WHERE compra_idcompra = 2 AND viagem_idviagem = 3;
DELETE FROM piloto_has_viagem WHERE piloto_idpiloto = 2 AND viagem_idviagem = 4;
SET FOREIGN_KEY_CHECKS=1;