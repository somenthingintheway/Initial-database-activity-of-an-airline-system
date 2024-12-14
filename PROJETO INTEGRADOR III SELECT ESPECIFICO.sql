use sistemadeviagens;
SELECT * FROM cliente where nome like '%Silva%';
SELECT * FROM compra WHERE status_compra = 'Confirmada';
SELECT * FROM aeronaves WHERE modelo LIKE '%Boeing%';
SELECT * FROM viagem WHERE destino = 'Fortaleza';
SELECT * FROM piloto WHERE cpf_piloto = '02914256844';
SELECT * FROM compra_has_viagem WHERE compra_idcompra = 1;
SELECT * FROM piloto_has_viagem WHERE piloto_idpiloto = 2;
SELECT * FROM historico_voos WHERE operacao = 'Check-in';