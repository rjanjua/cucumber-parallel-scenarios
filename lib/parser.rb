require 'gherkin/parser'
require 'gherkin/token_scanner'
require 'gherkin/token_matcher'
require 'gherkin/ast_builder'
require 'gherkin/errors'

class Parser
  attr_reader :ast

  def scenario_definitions
    return ast[:scenarioDefinitions]
  end

  def scenarios
    return scenario_definitions.select{ |s| s[:type] == :Scenario}.
                         map   { |s| s[:location][:line]}
  end

  def outline_examples
    return scenario_definitions.select{|s| s[:type] == :ScenarioOutline}.
                         map   {|s| s[:examples][0][:tableBody]}[0].
                         map   {|row| row[:location][:line]}
  end

  def scenario_locations
    return scenarios + outline_examples
  end

  def parse file
    parser = Gherkin::Parser.new
    scanner = Gherkin::TokenScanner.new(file)
    @ast = parser.parse(scanner)
    return scenario_locations
  end

end
