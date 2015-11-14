require 'replace_quotes/version'
require 'string_in_file'

#
module ReplaceQuotes
  def self.update(path)
    return if StringInFile.present('"', path) != true
    path_old = path
    path_new = "#{path_old}.new"
    file_w = open(path_new, 'w')
    File.readlines(path_old).each do |line|
      if (line.include? '"') == true && (line.include? "'") == false
        line_alt = line.tr('"', "'")
        file_w.write(line_alt)
      else
        file_w.write(line)
      end
    end
    file_w.close
    system("rm #{path_old}")
    system("mv #{path_new} #{path_old}")
  end
end
# Your new gem is a module by default.  You may wish to use a class instead.
