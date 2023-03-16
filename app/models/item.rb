class Item < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :item_condition
  belongs_to :shipping_fee
  belongs_to :prefecture
  belongs_to :shipping_day

  validates :item_name, presence: true
  validates :item_description, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank" }
  validates :item_condition_id, numericality: { other_than: 1 , message: "can't be blank" }
  validates :shipping_fee_id, numericality: { other_than: 1 , message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 0 , message: "can't be blank" }
  validates :shipping_day_id, numericality: { other_than: 1 , message: "can't be blank" }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :image, presence: true

end