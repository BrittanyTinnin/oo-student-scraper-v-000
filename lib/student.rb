require 'pry'

class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each{|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.map do |student|
      Student.new(student)
    end
  end


#   attributes_hash
# => {:twitter=>"someone@twitter.com",
#  :linkedin=>"someone@linkedin.com",
#  :github=>"someone@github.com",
#  :blog=>"someone@blog.com",
#  :profile_quote=>
#   "\"Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.\" - Rumi",
#  :bio=>
#   "I was in southern California for college (sun and In-n-Out!), rural Oregon for high school (lived in a town with 1500 people an
# d 3000+ cows), and Tokyo for elementary/middle school."}
  def add_student_attributes(attributes_hash)
<<<<<<< HEAD
    attributes_hash.each{|key, value| self.send(("#{key}="), value)}
=======

>>>>>>> e5bcf448975966128a773996da378f60e2b620ff
  end

  def self.all
    @@all
  end
end
