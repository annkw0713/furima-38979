class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id, :municipalities, :address, :building_name, :phone_number, :user_id, :item_id

  validates :post_code, presence: true, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
  validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :municipalities, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A0\d{10,11}\z/, message: 'is invalid' }
  attr_accessor :token

  validates :token, presence: true
  validates :user_id, presence: true

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(post_code: post_code, prefecture_id: prefecture_id, municipalities: municipalities, address: address,
                   building_name: building_name, phone_number: phone_number, order_id: order.id)
  end
end
