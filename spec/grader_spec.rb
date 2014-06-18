require 'rspec'
require_relative '../lib/grader'

describe Grader do
  it 'determines differences in a student\'s grade' do
    input = [6,3,5,4,3,4,4,5]
    expected = [:down,:up,:down,:down,:up,:even,:up]
    grader = Grader.new(input)
    expect(grader.compare_grades).to eq(expected)
  end
end