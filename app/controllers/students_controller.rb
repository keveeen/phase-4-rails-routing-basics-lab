
require 'pry'

class StudentsController < ApplicationController

    def index
        students = Student.all

        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)

        render json: grades

    
    end

    def highest_grade

        # desc_grades = Student.all.order(grade: :desc).first
        # grade = desc_grades.first
        desc_grades = Student.where("grade = ?", Student.maximum(:grade)).first
#    binding.pry
        render json: desc_grades

    end
end
