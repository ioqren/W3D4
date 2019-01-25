# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  text        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
    validates :question_id, presence: true
    validates :text, presence: true

    belongs_to :question,
        primary_key: :id,
        foreign_key: :question_id,
        class_name: :Question

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    
end
