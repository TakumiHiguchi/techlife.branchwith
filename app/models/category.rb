class Category < ApplicationRecord
    belongs_to :parent, class_name: :Category, optional: true
    has_many :children, class_name: :Category, foreign_key: :parent_id
    has_many :post_category_relations
    has_many :posts, through: :post_category_relations
end
