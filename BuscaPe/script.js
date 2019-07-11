

function carregarItens (){
    var retorno = "";
    var itens = {
        "items": [
            {
                "product": {
                    "id": 2321312,
                    "name": "Smartphone Apple iPhone 7 128GB",
                    "images": [
                        "http://thumbs.buscape.com.br/celular-e-smartphone/smartphone-apple-iphone-7-128gb_600x600-PU98460_1.jpg",
                        "http://thumbs.buscape.com.br/celular-e-smartphone/smartphone-apple-iphone-7-128gb/__200x400-PU98460_2_c.jpg?v=2347575274",
                        "http://thumbs.buscape.com.br/celular-e-smartphone/smartphone-apple-iphone-7-128gb/__200x400-PU98460_3_c.jpg?v=318433138",
                        "http://thumbs.buscape.com.br/celular-e-smartphone/smartphone-apple-iphone-7-128gb/__200x400-PU98460_4_c.jpg?v=33273730"
                    ],
                    "price": {
                        "value": 3509.10,
                        "installments": 10,
                        "installmentValue": 389.90
                    }
                }
            },
            {
                "product": {
                    "id": 9971,
                    "name": "Smart TV Samsung Série 4 UN32J4300AG 32 polegadas LED Plana",
                    "images": [
                        "http://mthumbs.buscape.com.br/tv/smart-tv-samsung-serie-4-un32j4300ag-32-polegadas-led-plana_600x600-PU95547_1.jpg",
                        "http://thumbs.buscape.com.br/__400x400-PU95547_2_c.jpg?v=3988579075",
                        "http://thumbs.buscape.com.br/__400x400-PU95547_4_c.jpg?v=4208003525",
                        "http://thumbs.buscape.com.br/__231312400x400-PU95547_5_c.jpg?v=1473261122"
                    ],
                    "price": {
                        "value": 1139.90,
                        "installments": 10,
                        "installmentValue": 134.11
                    }
                }
            },
            {
                "product": {
                    "id": 6717131,
                    "name": "Câmera Digital Canon EOS Rebel T5i 18.0 Megapixels",
                    "images": [
                        "http://mthumbs.buscape.com.br/camera-digital/canon-eos-rebel-t5i-18-0-megapixels_600x600-PU7bf7b_1.jpg"
                    ],
                    "price": {
                        "value": 1999.20,
                        "installments": 10,
                        "installmentValue": 235.20
                    }
                }
            },
            {
                "product": {
                    "id": 6717131,
                    "name": "Lenovo IdeaPad 310 80UH0004BR Intel Core i7-6500U 2.5 GHz 8192 MB 1024 GB",
                    "images": [
                        "http://mthumbs.buscape.com.br/notebook/lenovo-ideapad-310-80uh0004br-intel-core-i7-6500u-2-5-ghz-8192-mb-1024-gb_600x600-PU98e6e_1.jpg"
                    ],
                    "price": {
                        "value": 2599.00,
                        "installments": 10,
                        "installmentValue": 259.90
                    }
                }
            }
        ]
    }


                //Laço de criar linhas
    for(var i = 0; i<itens.items.length; i++){
        retorno += '<div class="col-md-12 col-xs-8">';
        retorno += '<div class="product">';
        retorno += '<div class="thumbnail">';
        for(var e = 0; e<4; e++){
            retorno += '<img src="'+itens.items[i].product.images[e]+'" alt="Thumbnail">';
        }
        retorno += '</div>';
        retorno += '<div class="product-img">';
        retorno += '<img src="'+itens.items[i].product.images[0]+'" alt="Thumbnail">';
        retorno += '</div>';
        retorno += '<div class="product-body">';
        retorno += '<h3 class="product-name"><a href="#">'+ itens.items[i].product.name +'</a></h3>';
        retorno += '<div class="product-price"> x'+itens.items[i].product.price.installments+' '+itens.items[i].product.price.installmentValue+'</div>';
        retorno += '<p class="product-name"> ou '+ itens.items[i].product.price.value + ' á Vista</a></p>';
        retorno += '</div>';
        retorno += '<button type="button" class="btn btn-primary btn-sm" id="compra">Adicionar ao Carrinho</button>';
        retorno += '</div>';
        retorno += '</div>';

    }
    //Preencher a Tabela//
    $("#dados").html(retorno);

}