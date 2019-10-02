class Exercise
  attr_accessor :id, :question, :answers, :correct_answer

  def initialize yaml
    self.id = yaml['id']
    self.question = yaml['question']
    self.answers = yaml['answers']
    self.correct_answer = yaml['correct_answer']
  end

  def answer_options lang
    answers
  end

end