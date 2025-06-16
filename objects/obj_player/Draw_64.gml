if global.inventory_visible = true {
	// Posições do inventário no topo da tela
	var x_pos = 50;  // Posição inicial X
	var y_pos = 50;  // Posição inicial Y
	var item_width = 100;  // Largura de cada caixinha
	var item_height = 100;  // Altura de cada caixinha
	var gap = 10;  // Espaço entre as caixinhas

	var title_height = 30//Altura da caixinha de título
	x_pos_title = 112

	// Desenhar o título do inventário
	draw_sprite(spr_inventory_title, 0, x_pos_title, y_pos);  // Caixinha de fundo para o título

	// Definir a fonte para o texto (se você quiser mudar a fonte)
	draw_set_font(fnt_text_inv); // Defina uma fonte personalizada, se tiver

	// Desenhar o texto "Inventário" dentro da caixinha
	draw_text(x_pos_title + 50,  y_pos , "Inventory");

	// Atualiza a posição Y para desenhar os slots abaixo do título
	y_pos += title_height + gap;  // Movemos a posição Y para o início dos itens

	// Desenha as caixinhas de inventário (mesmo que vazias)
	for (var i = 0; i < global.max_inventory_items; i++) {
	    // Desenha a caixinha de fundo
	    draw_sprite(spr_inventory_box, 0, x_pos, y_pos);  // spr_inventory_box é o fundo da caixinha
    
	    // Verifica se existe um item no slot
	    if (i < array_length(global.inventory)) {
	        var item = global.inventory[i];
        
	        // Desenha o sprite do item dentro da caixinha
	        draw_sprite(item.sprite, 0, x_pos + 15, y_pos + 15);  // Desenha com um pequeno deslocamento
	    }
    
	    // Atualiza a posição X para o próximo slot
	    x_pos += item_width + gap;
	}
}

