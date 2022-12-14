class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: 'Fiction', 'Non-fiction' }

    # validate :clickbaity?

    # def clickbaity?
    #    unless title.match? (["Won't Believe", "Secret", "Top", "Guess"])
    #     errors.add(:title, "Insufficient Title.")
    #    end
    # end

end
