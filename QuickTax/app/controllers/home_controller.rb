class HomeController < ApplicationController
  def index
  end
  
  def index2
    #HELLO2
    # MONTHLY INCOME IS MAIN VARIABLE FOR COMPUTATIONS
    @monthlyIncome = params[:monthlySalaryInput].to_i
    
    # REPLACE NIL WITH COMPUTATION FOR SPECIFIED FORMULA

    #TODO: TAX COMPUTATION [INCOME TAX]
    @incomeTax = nil

    #TODO: TAX COMPUTATION [NET PAY AFTER TAX]
    @netPayAfterTax = nil

    #TODO: Monthly Contributions [SSS]
    @SSS = nil

    #TODO: Monthly Contributions [PhilHealth]
    @philHealth = nil

    #TODO: Monthly Contributions [Pag-Ibig]
    @pagIbig = nil

    #TODO: Monthly Contributions [Total-Contributions]
    @totalContributions = nil 

    #TODO: [Total Deductions]
    @totalDeductions = nil 

    #TODO: [NetPayAfterDeductions]
    @netPayAfterDeductions = nil

  end
end
