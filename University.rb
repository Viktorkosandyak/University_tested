require'pry'
class University

  attr_reader :universityName, :internship

  def universityName=(universityName)
    if universityName == ""
      raise "universityName cant be blank!"
    else
      @universityName = universityName
    end
  end

  def internship=(internship)
    if internship == ""
      raise "internship cant be blank!"
    else
      @internship = internship
    end
  end

  def initialize
    current_path = "../" + File.dirname(__FILE__)
    file_name = current_path + "/data/students.txt"

    begin
      f = File.new(file_name, "r:UTF-8")
      lines = f.readlines
      f.close
    rescue Errno::ENOENT
      puts "Не удалось открыть файл #{filename}"
    end
     @all_students = Hash[lines.map { |e| [ e.chomp, Random.rand(1..5) ] }]

    self.universityName = universityName
    self.internship = internship
  end

  def print_univer(universityName, internship)
    puts "University name is #{universityName}, and he have internship #{internship}"
  end

  def addStudentsinternship
    puts "these students can enter the internship:"
    p @all_students.select {|k,v| v == 4 || v == 5}
  end

end

  u = University.new
  u.print_univer("Franko", "ALASKA")
  u.addStudentsinternship
