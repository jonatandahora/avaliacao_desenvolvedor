class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.string :comprador
      t.string :descricao
      t.float :preco_unitario
      t.integer :quantidade
      t.string :endereco
      t.string :fornecedor

      t.timestamps
    end
  end
end
