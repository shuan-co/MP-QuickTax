class HomeController < ApplicationController
  # Constants
  PhilHealth_Percentage = 0.045
  PagIbig_Percentage_Above1500 = 0.02
  PagIbig_Percentage_Below1500 = 0.01
  SSS_Employee_Percentage = 0.045

  # COMPUTATION FUNCTIONS
  def sssContribution(monthly_income)
    if(monthly_income < 3000)
      temp_SSS = 4000
    else
      temp_SSS = monthly_income
    end
    
    floor_val = 4250
    ceil_val = 4749.99

    if temp_SSS < floor_val
      sss_contribution = 4000 * SSS_Employee_Percentage

    elsif ((floor_val)..(ceil_val)).include?(temp_SSS)
      sss_contribution = (4500) * SSS_Employee_Percentage

    elsif ((floor_val + 500)..(ceil_val + 500)).include?(temp_SSS)
      sss_contribution = (5000) * SSS_Employee_Percentage

    elsif ((floor_val + 1000)..(ceil_val + 1000)).include?(temp_SSS)
      sss_contribution = (5500) * SSS_Employee_Percentage

    elsif ((floor_val + 1500)..(ceil_val + 1500)).include?(temp_SSS)
      sss_contribution = (6000) * SSS_Employee_Percentage

    elsif ((floor_val + 2000)..(ceil_val + 2000)).include?(temp_SSS)
      sss_contribution = (6500) * SSS_Employee_Percentage

    elsif ((floor_val + 2500)..(ceil_val + 2500)).include?(temp_SSS)
      sss_contribution = (7000) * SSS_Employee_Percentage

    elsif ((floor_val + 3000)..(ceil_val + 3000)).include?(temp_SSS)
      sss_contribution = (7500) * SSS_Employee_Percentage

    elsif ((floor_val + 3500)..(ceil_val + 3500)).include?(temp_SSS)
      sss_contribution = (8000) * SSS_Employee_Percentage

    elsif ((floor_val + 4000)..(ceil_val + 4000)).include?(temp_SSS)
      sss_contribution = (8500) * SSS_Employee_Percentage

    elsif ((floor_val + 4500)..(ceil_val + 4500)).include?(temp_SSS)
      sss_contribution = (9000) * SSS_Employee_Percentage

    elsif ((floor_val + 5000)..(ceil_val + 5000)).include?(temp_SSS)
      sss_contribution = (9500) * SSS_Employee_Percentage

    elsif ((floor_val + 5500)..(ceil_val + 5500)).include?(temp_SSS)
      sss_contribution = (10000) * SSS_Employee_Percentage

    elsif ((floor_val + 6000)..(ceil_val + 6000)).include?(temp_SSS)
      sss_contribution = (10500) * SSS_Employee_Percentage

    elsif ((floor_val + 6500)..(ceil_val + 6500)).include?(temp_SSS)
      sss_contribution = (11000) * SSS_Employee_Percentage

    elsif ((floor_val + 7000)..(ceil_val + 7000)).include?(temp_SSS) # Start of Discrepancy
      sss_contribution = (11500) * SSS_Employee_Percentage

    elsif ((floor_val + 7500)..(ceil_val + 7500)).include?(temp_SSS)
      sss_contribution = (12000) * SSS_Employee_Percentage

    elsif ((floor_val + 8000)..(ceil_val + 8000)).include?(temp_SSS)
      sss_contribution = (12500) * SSS_Employee_Percentage

    elsif ((floor_val + 8500)..(ceil_val + 8500)).include?(temp_SSS)
      sss_contribution = (13000) * SSS_Employee_Percentage

    elsif ((floor_val + 9000)..(ceil_val + 9000)).include?(temp_SSS)
      sss_contribution = (13500) * SSS_Employee_Percentage

    elsif ((floor_val + 9500)..(ceil_val + 9500)).include?(temp_SSS)
      sss_contribution = (14000) * SSS_Employee_Percentage

    elsif ((floor_val + 10000)..(ceil_val + 10000)).include?(temp_SSS)
      sss_contribution = (14500) * SSS_Employee_Percentage

    elsif ((floor_val + 10500)..(ceil_val + 10500)).include?(temp_SSS)
      sss_contribution = (15000) * SSS_Employee_Percentage

    elsif ((floor_val + 11000)..(ceil_val + 11000)).include?(temp_SSS)
      sss_contribution = (15500) * SSS_Employee_Percentage

    elsif ((floor_val + 11500)..(ceil_val + 11500)).include?(temp_SSS)
      sss_contribution = (16000) * SSS_Employee_Percentage

    elsif ((floor_val + 12000)..(ceil_val + 12000)).include?(temp_SSS)
      sss_contribution = (16500) * SSS_Employee_Percentage

    elsif ((floor_val + 12500)..(ceil_val + 12500)).include?(temp_SSS)
      sss_contribution = (17000) * SSS_Employee_Percentage

    elsif ((floor_val + 13000)..(ceil_val + 13000)).include?(temp_SSS)
      sss_contribution = (17500) * SSS_Employee_Percentage

    elsif ((floor_val + 13500)..(ceil_val + 13500)).include?(temp_SSS)
      sss_contribution = (18000) * SSS_Employee_Percentage

    elsif ((floor_val + 14000)..(ceil_val + 14000)).include?(temp_SSS)
      sss_contribution = (18500) * SSS_Employee_Percentage

    elsif ((floor_val + 14500)..(ceil_val + 14500)).include?(temp_SSS)
      sss_contribution = (19000) * SSS_Employee_Percentage

    elsif ((floor_val + 15000)..(ceil_val + 15000)).include?(temp_SSS)
      sss_contribution = (19500) * SSS_Employee_Percentage

    elsif ((floor_val + 15500)..(ceil_val + 15500)).include?(temp_SSS)
      sss_contribution = (20000) * SSS_Employee_Percentage

    elsif ((floor_val + 16000)..(ceil_val + 16000)).include?(temp_SSS) # Start of Mandatory Provident Fund
      sss_contribution = (20500) * SSS_Employee_Percentage

    elsif ((floor_val + 16500)..(ceil_val + 16500)).include?(temp_SSS)
      sss_contribution = (21000) * SSS_Employee_Percentage

    elsif ((floor_val + 17000)..(ceil_val + 17000)).include?(temp_SSS)
      sss_contribution = (21500) * SSS_Employee_Percentage

    elsif ((floor_val + 17500)..(ceil_val + 17500)).include?(temp_SSS)
      sss_contribution = (22000) * SSS_Employee_Percentage

    elsif ((floor_val + 18000)..(ceil_val + 18000)).include?(temp_SSS)
      sss_contribution = (22500) * SSS_Employee_Percentage

    elsif ((floor_val + 18500)..(ceil_val + 18500)).include?(temp_SSS)
      sss_contribution = (23000) * SSS_Employee_Percentage

    elsif ((floor_val + 19000)..(ceil_val + 19000)).include?(temp_SSS)
      sss_contribution = (23500) * SSS_Employee_Percentage

    elsif ((floor_val + 19500)..(ceil_val + 19500)).include?(temp_SSS)
      sss_contribution = (24000) * SSS_Employee_Percentage

    elsif ((floor_val + 20000)..(ceil_val + 20000)).include?(temp_SSS)
      sss_contribution = (24500) * SSS_Employee_Percentage

    elsif ((floor_val + 20500)..(ceil_val + 20500)).include?(temp_SSS)
      sss_contribution = (25000) * SSS_Employee_Percentage

    elsif ((floor_val + 21000)..(ceil_val + 21000)).include?(temp_SSS)
      sss_contribution = (25500) * SSS_Employee_Percentage

    elsif ((floor_val + 21500)..(ceil_val + 21500)).include?(temp_SSS)
      sss_contribution = (26000) * SSS_Employee_Percentage

    elsif ((floor_val + 22000)..(ceil_val + 22000)).include?(temp_SSS)
      sss_contribution = (26500) * SSS_Employee_Percentage

    elsif ((floor_val + 22500)..(ceil_val + 22500)).include?(temp_SSS)
      sss_contribution = (27000) * SSS_Employee_Percentage

    elsif ((floor_val + 23000)..(ceil_val + 23000)).include?(temp_SSS)
      sss_contribution = (27500) * SSS_Employee_Percentage

    elsif ((floor_val + 23500)..(ceil_val + 23500)).include?(temp_SSS)
      sss_contribution = (28000) * SSS_Employee_Percentage

    elsif ((floor_val + 24000)..(ceil_val + 24000)).include?(temp_SSS)
      sss_contribution = (28500) * SSS_Employee_Percentage

    elsif ((floor_val + 24500)..(ceil_val + 24500)).include?(temp_SSS)
      sss_contribution = (29000) * SSS_Employee_Percentage

    elsif ((floor_val + 25000)..(ceil_val + 25000)).include?(temp_SSS)
      sss_contribution = (29500) * SSS_Employee_Percentage

    elsif (temp_SSS >= 29750)
      sss_contribution = (30000) * SSS_Employee_Percentage
    end
    return sss_contribution
  end

  def philHealthContribution(monthly_income)
    if(monthly_income <= 10000)
      temp_philHealth = 450
      philHealth_contribution = temp_philHealth / 2
    
    elsif(monthly_income >= 90000)
      philHealth_contribution = 4050
    
    else
      temp_philHealth = monthly_income * PhilHealth_Percentage
      philHealth_contribution = temp_philHealth / 2
    end
    return philHealth_contribution
  end

  def pagIbigContribution(monthly_income)
    if(monthly_income > 5000)
      temp_pagIbig = 5000
    
    else
      temp_pagIbig = monthly_income
    end

    if(temp_pagIbig * 0.5) <= 1500
      pagIbig_contribution = temp_pagIbig * 0.01
    
    else
      pagIbig_contribution = temp_pagIbig * 0.02
    end

    return pagIbig_contribution
  end

  def incomeTaxComputation(monthly_income, total_contributions)
    taxable_income = monthly_income - total_contributions
    if(taxable_income <= 20833)
      monthly_tax = 0
      income_tax = 0

    elsif(taxable_income >= 20833 and taxable_income <= 33332)
      monthly_tax = 0
      income_tax = ((taxable_income - 20833) * 0.15) + monthly_tax

    elsif(taxable_income >= 33333 and taxable_income <= 66666)
      monthly_tax = 1875
      income_tax = ((taxable_income - 33333) * 0.20) + monthly_tax

    elsif(taxable_income >= 66667 and taxable_income <= 166666)
      monthly_tax = 8541.80
      income_tax = ((taxable_income - 66667) * 0.25) + monthly_tax

    elsif(taxable_income >= 166667 and taxable_income <= 666666)
      monthly_tax = 33541.80
      income_tax = ((taxable_income - 166667) * 0.30) + monthly_tax

    elsif(taxable_income >= 666667)
      monthly_tax = 183541.80
      income_tax = ((taxable_income - 666667) * 0.35) + monthly_tax
    end
    return income_tax
  end

  def 
  # WEB CONTROLLER FUNCTIONS

  def index
  end
  
  def index2
    # MONTHLY INCOME IS MAIN VARIABLE FOR COMPUTATIONS
    @monthlyIncome = params[:monthlySalaryInput].to_i
    
    # REPLACE NIL WITH COMPUTATION FOR SPECIFIED FORMULA

    #Monthly Contributions [SSS]
    @SSS = sssContribution(@monthlyIncome)

    #Monthly Contributions [PhilHealth]
    @philHealth = philHealthContribution(@monthlyIncome)

    #Monthly Contributions [Pag-Ibig]
    @pagIbig = pagIbigContribution(@monthlyIncome)

    #Monthly Contributions [Total-Contributions]
    @totalContributions = @SSS + @philHealth + @pagIbig

    #TAX COMPUTATION [INCOME TAX]
    @incomeTax = incomeTaxComputation(@monthlyIncome, @totalContributions)

    #TAX COMPUTATION [NET PAY AFTER TAX]
    @netPayAfterTax = @monthlyIncome - @incomeTax

    #[Total Deductions]
    @totalDeductions = @totalContributions + @incomeTax 

    #[NetPayAfterDeductions]
    @netPayAfterDeductions = @monthlyIncome - @totalDeductions

  end
end
