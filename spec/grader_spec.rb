require 'rspec'
require_relative '../lib/grader'

describe Grader do
  it 'determines differences in a student\'s grade' do
    input = [6,3,5,4,3,4,4,5]
    expected = [:down,:up,:down,:down,:up,:even,:up]
    grader = Grader.new(input)
    expect(grader.compare_grades).to eq(expected)
  end
  it 'determines if a student is not in decline' do
    input = [:down, :down, :down, :up]
    expected = 'not in decline'
    grader = Grader.new(input)
    expect(grader.decline_finder).to eq(expected)
  end
  it 'determines if a student is in decline' do
    input = [:even, :even, :down, :even, :down, :even, :even, :even, :down]
    expected = 'in decline'
    grader = Grader.new(input)
    expect(grader.decline_finder).to eq(expected)
  end
  it 'determines if a student is not in decline due to only having less than 3 grades' do
    input = [:down, :down]
    expected = 'not in decline'
    grader = Grader.new(input)
    expect(grader.decline_finder).to eq(expected)
  end
end