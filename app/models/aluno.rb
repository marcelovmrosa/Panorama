class Aluno < ActiveRecord::Base
  belongs_to :user
  has_one :curso
end
