class HourlyEmployee < Employee
	include CalculateHrlySalary
	attr_accessor(:name, :email, :hourly_rate, :hourly_worked)
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end


    def calculate_salary
			calculate_hrly_salary(@hours_worked)
    	#tax = salary * 0.18
    	#salary_after_tax = salary - tax
      #returns the hours worked * hourly_rate
    end
end
