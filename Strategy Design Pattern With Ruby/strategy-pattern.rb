=begin 
WITHOUT STRATEGY PATTERN
require 'json'

class Reporter
    def report
        stock_left = { bacon: 300, chocolate: 200, orange: 100 }

        html = "<title>Current Stock Report</title>"

        stock_left.each { |name, amount| html <<"<li>#{name} - # {amount}</li>"}

        html

    end
end

r = Reporter.new
p r.report 
=end

# WITH STRATEGY PATTERN

require 'json'

class Reporter
    def initialize(formatter)
        @formatter = formatter.new
    end
    
    def report
        stock_left = {bacon: 300, chocolate: 200, orange: 100}

        @formatter.format(stock_left)
    end
end

class JSONFormatter
    def format(data)
        #insert code here
    end
end

class HTMLFormatter
    def format(data)
        #insert code here
    end
end

class YAMLFormatter
    def format(data)
        #insert code here
    end
end

r = Reporter.new(YAMLFormatter)
p r.report

=begin
How does the strategy pattern work?
The Strategy pattern lets you indirectly alter the object's behavior at runtime by associating it with different sub-objects which can perform specific sub-tasks in different ways. Use the Strategy when you have a lot of similar classes that only differ in the way they execute some behavior
=end