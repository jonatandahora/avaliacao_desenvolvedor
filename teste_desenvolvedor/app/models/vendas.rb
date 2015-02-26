class Vendas < ActiveRecord::Base
  validates :comprador, presence: true
end
