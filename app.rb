# frozen_string_literal: true

require 'pry'

# company class
class Company
  attr_accessor :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end
end

companies = [
  Company.new('Alpha', 30),
  Company.new('Beta', 300),
  Company.new('Delta', 3000)
]

### Your code below this
def company_strings(companies)
  companies.map { |company| "#{company.name}, #{company.size}" }
end
p company_strings(companies)

def company_size_total(companies)
  companies.reduce(0) { |total, company| total + company.size }
end
p company_size_total(companies)

def company_size_filter(companies)
  companies.select { |company| company.size > 100 }
end
p company_size_filter(companies)

def company_beta_finder(companies)
  companies.select { |company| company.name == 'Beta' }
end
p company_beta_finder(companies)

def biggest_company(companies)
  companies.max { |company| company.size }
end
p biggest_company(companies)

def sort_companies_largest_to_smallest(companies)
  large_to_least = []
  companies.map { |company| large_to_least << company.size }
  large_to_least.reverse
end
p sort_companies_largest_to_smallest(companies)
