require_relative 'account'

class Statement
  attr_accessor :summary

  def initialize
    @summary = []
  end

  def show
    puts 'Date      ||Deb/Cr||Amt||Bal||'
    @summary.each do |line|
      line.each do |x|
        print x.to_s + "||"
      end
        print "\n"
    end
  end

end
