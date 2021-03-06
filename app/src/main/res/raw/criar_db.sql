CREATE TABLE if not exists Categoria ( ID INT NOT NULL AUTOINCREMENT, Descricao TEXT NOT NULL, PRIMARY KEY (ID), UNIQUE Descricao_UNIQUE (Descricao ASC));
CREATE TABLE if not exists Sub_Categoria (ID INT NOT NULL AUTOINCREMENT, ID_Categoria INT NOT NULL, Descricao TEXT NOT NULL, PRIMARY KEY (ID), foreign key(ID_Categoria) references Categoria(ID),UNIQUE Descricao_UNIQUE (Descricao ASC));
CREATE TABLE if not exists Marca ( ID int not null AUTOINCREMENT, Descricao TEXT, primary key (ID), unique Descricao_UNIQUE (Descricao ASC));
insert into Categoria (Descricao) values('Bazar');
insert into Categoria (Descricao) values('Bebidas Alcoólicas');
insert into Categoria (Descricao) values('Bebidas Não Alcoólicas');
insert into Categoria (Descricao) values('Congelados e Resfriados');
insert into Categoria (Descricao) values('Descartáveis');
insert into Categoria (Descricao) values('Higiene, Saúde e Beleza');
insert into Categoria (Descricao) values('Lácteos');
insert into Categoria (Descricao) values('Limpeza');
insert into Categoria (Descricao) values('Matinais');
insert into Categoria (Descricao) values('Mercearia de Alto Giro');
insert into Categoria (Descricao) values('Mercearia Doce');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Alimento para Cães');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Alimento para Gatos');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Artigos para Festas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Cera Automotiva');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Eletroportáteis');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Filtro de Papel para Café');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Lâmpada fluorescente compacta');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Lâmpada incandescente');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Mamadeira');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Pano de Limpeza');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Pilha');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Pilha Alcalina');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Pilha Comum');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Puericultura Leve');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Sandália/Chinelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Shampoo para cães e gatos');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Talheres');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Utilidade Doméstica em Plástico');
insert into Sub_Categoria(ID_Categoria,Descricao) values(1	, 'Vassoura');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Aguardente');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Bebida Ice');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Cerveja');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Cervejas Especiais ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Espumante');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Sidra ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Uísque importado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Uísque nacional');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vinho Branco Importado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vinho Branco Nacional');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vinho Tinto Importado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vinho Tinto Nacional');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vinhos e espumantes');
insert into Sub_Categoria(ID_Categoria,Descricao) values(2	, 'Vodka');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Água Especial ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Água Mineral');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Bebida à Base de Soja');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Bebida Energética ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Bebida Esportiva ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Chá Pronto para Beber');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Refresco em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Refrigerante Sabor de Frutas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Refrigerante Tipo Cola');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Refrigerante Tipo Guaraná');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Suco de Fruta Concentrado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Suco de Fruta Pronto para Beber');
insert into Sub_Categoria(ID_Categoria,Descricao) values(3	, 'Suco Integral');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Batata Congelada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Corte de frango resfriado/congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Empanado de Frango Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Frango Resfriado / Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Hambúrguer Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Linguiça');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Linguiça Embalada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Marca de Corte de Carne Bovina Embalada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Mortadela');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Pão de Queijo Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Peixe Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Peru Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Pizza Pronta Congelada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Prato Pronto Congelado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Presunto');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Salame Embalado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Salsicha');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Salsicha Embalada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Sorvete');
insert into Sub_Categoria(ID_Categoria,Descricao) values(4	, 'Vegetais Congelados');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Absorvente Higiênico Feminino');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Filme Plástico para Embalar Alimentos no Lar');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Fralda Descartável');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Fralda Geriátrica');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Guardanapo de Papel');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Papel Alumínio');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Papel Higiênico');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Papel Higiênico Folha Dupla');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Papel Higiênico Folha Simples');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Produtos para incontinência');
insert into Sub_Categoria(ID_Categoria,Descricao) values(5	, 'Toalha de Papel');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Antisséptico Bucal');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Aparelho de barbear');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Aparelho de Barbear Descartável');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Aparelho não descartável / carga de barbear');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Coloração Feminina para Cabelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Condicionador de Cabelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Creme Dental');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Creme Dental para dentes sensíveis');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Creme para Tratamento de Cabelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Cuidados com o cabelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Cuidados com o corpo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Cuidados com o rosto');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Depilatórios Feminino ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Desodorante');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Escova Dental');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Escova para Cabelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Esmalte para Unhas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Fio e Fita Dental');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Fixador de dentadura');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Lenço de Papel');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Lenço Umedecido');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Linha de banho infantil');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Loção Hidratante para o Corpo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Loção Pós-barba');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Preservativo Masculino');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Produtos para Barbear ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Protetor Solar');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Sabonete');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Sabonete Infantil');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Sabonete Líquido');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Sabonete Líquido Íntimo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Shampoo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Shampoo Infantil');
insert into Sub_Categoria(ID_Categoria,Descricao) values(6	, 'Talco para os pés');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Cream Cheese');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Iogurte');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Iogurte Funcional ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Iogurte Grego');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Iogurte Light');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Lácteos Resfriados');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Leite Fermentado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Manteiga');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Margarina');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Queijo Minas Frescal');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Queijo Mussarela');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Queijo Ralado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Queijo Tipo Petit Suisse');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Queijos Especiais ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Requeijão');
insert into Sub_Categoria(ID_Categoria,Descricao) values(7	, 'Sobremesa Cremosa Láctea');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Água Sanitária');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Alvejante com Cloro');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Alvejante sem Cloro');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Amaciante de Roupa');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Cera para Piso');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Concentrado Líquido para Limpeza');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Desinfetante');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Desodorizador para vaso sanitário');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Detergente em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Detergente Líquido');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Detergente líquido para roupas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Escova para Lavar');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Esfregão/Mop');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Esponja Sintética para Limpeza');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Inseticida');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Lã de Aço');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Lava Roupas Líquido');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Limpador Multiuso');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Lustra Móveis');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Odorizador de Ambiente');
insert into Sub_Categoria(ID_Categoria,Descricao) values(8	, 'Sabão em Barra');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Achocolatado em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Achocolatado Líquido');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Adoçante');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Bolinhos Recheados');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Bolo Industrializado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Café Capuccino');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Café Solúvel');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Cereais, grãos e farinhas orgânicos ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Cereal Matinal');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Cereal para Mingau');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Leite em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Leite em Pó Infantil Fórmula Especial ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Leite Longa Vida ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Pães de Forma Especiais ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Pão de Forma Industrializado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(9	, 'Torrada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Açúcar Refinado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Arroz');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Arroz Integral');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Atomatados');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Atum em Lata');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Azeite');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Azeitona em Conserva');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Café Torrado e Moído');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Cafés');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Caldo em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Caldo em Tablete');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Caldos');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Catchup');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Ervilha em Conserva');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Extrato de Tomate');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Farinha de Trigo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Farofa Pronta Temperada');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Feijão');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Fubá de Milho');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Macarrão');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Macarrão Instantâneo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Maionese');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Milho de Pipoca para Microondas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Milho Verde em Conserva');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Molho de Pimenta');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Molho de Soja');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Molho de Tomate');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Molho de Tomate em Sachê');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Molho Pronto para Saladas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Mostarda');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Óleo de Soja');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Óleos Especiais');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Palmito em Conserva');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Sardinha em Lata');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Sopa em Envelope');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Sopa Instantânea');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Sopas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Tempero Pronto em Pasta');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Tempero Pronto em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Temperos');
insert into Sub_Categoria(ID_Categoria,Descricao) values(10, 'Vinagre');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Bala');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Caramelo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Confeito');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Drops');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Pastilha');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito Água e Sal/Cream Craker');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito Integral');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito Maria/Maizena');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito Recheado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Biscoito Waffer');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Bombom em Caixa');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Bombom em Pacote');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Cereal em Barra');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Cereja em Calda');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Chá em Saquinho');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Chocolate');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Chocolate em Tablete');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Cookies Integrais');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Creme de Leite');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Fermento em Pó Químico ');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Frutas Secas');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Gelatina em Pó');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Goma de Mascar');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Leite Condensado');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Mistura para Bolo');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Mistura para doces e salgados');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Ovo de Páscoa');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Panetone');
insert into Sub_Categoria(ID_Categoria,Descricao) values(11, 'Salgadinho');
