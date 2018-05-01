#1:N
#CRUD => Create, Reas, Update, Delete
class Post < ApplicationRecord
  belongs_to :user
end
