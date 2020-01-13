class Student

  def initialize(input_student_name, input_cohort, input_language)
    @student_name = input_student_name
    @cohort = input_cohort
    @language = input_language
  end

# Getter Methods

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end


# Setter Methods

def set_student_name(new_student_name)
  @student_name = new_student_name
end

def set_cohort(new_cohort)
  @cohort = new_cohort
end


# Returns from students

def can_student_talk(speech)
  return speech
end


def return_lang(language)
  return "I love " + (language)
end

end
