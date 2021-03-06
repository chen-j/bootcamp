class MultiPaymentEmployee < Employee
	include CalculateHrlySalary
	attr_accessor(:name, :email, :yearly_salary, :hourly_rate, :hourly_worked)
    def initialize(name, email, yearly_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      base_salary = @yearly_salary / 52.0
			base_salary.round(2)
      # extra_hours = @hours_worked - 40
      # extra_salary = extra_hours * @hourly_rate
      extra_salary = hourly_rate * (@hours_worked - 40)
      salary = base_salary + extra_salary
			salary.round(2)
      #tax = salary * 0.18
      #salary_after_tax = salary - tax
    end
end
