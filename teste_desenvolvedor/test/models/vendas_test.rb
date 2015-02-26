require 'test_helper'

class VendasTest < ActiveSupport::TestCase
   test "nao_salvar_sem_comprador" do
     venda = Vendas.new
     assert_not venda.save, 'Salvou a venda sem um comprador'
   end
end
