# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

#1:N
#CRUD => Create, Reas, Update, Delete
class Post < ApplicationRecord
  belongs_to :user
end
