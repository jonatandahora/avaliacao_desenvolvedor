class VendasController < ApplicationController
  def index
  end


  def show
    if params[:file]
      linhas = params[:file].tempfile.readlines #le as linhas do arquivo e remove o simbolo newline
      linhas.shift #remove primeira linha
      linhas.each do |linha|
        campos = linha.encode("ASCII-8BIT").force_encoding("utf-8").split("\t") #normaliza a linha
        Vendas.create(comprador: campos[0], descricao: campos[1], preco_unitario: campos[2], quantidade: campos[3], endereco: campos[4], fornecedor: campos[5] ) #persiste no banco
      end
      @vendas = Vendas.all
      @total = 0
      @vendas.each{ |item|
        @total+= item.preco_unitario * item.quantidade
      }
    end
  end
end
