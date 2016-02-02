class Person < ActiveRecord::Base
    validates :red, :green, :blue, :age,  presence: true, numericality: {greater_than: -1, less_than: 256}
    validates :name, :gender, :ethnicity, presence: true
    validates :height, :weight, presence: true
end
