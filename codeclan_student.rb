
class CodeclanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end
  #-----------------------------GETTERS:
  def name
    return @name
  end

  def cohort
    return @cohort
  end
  #-----------------------------SETTERS:
  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end
  #------------------------------------------

  def talks
    return "Hi, I'm a student and I can talk!"
  end

  def fav_language(language)
    if language != "Java"
      return "I love #{language}!"
    else
      return "I hate #{language}!"
    end
  end




end
