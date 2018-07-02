package com.mulesoft.demo.loan;

public class RiskRatingService {
	private Integer monthlyIncome;
	private Integer combinedFicoScore;
	private boolean loanAuthorized = false;
	
	public boolean getLoanDecision(Integer income, Integer combinedFico) {
		this.monthlyIncome = income;
		this.combinedFicoScore = combinedFico;
		
		if(this.combinedFicoScore > 749) 
			this.loanAuthorized = true;
		else if(this.combinedFicoScore > 649 && this.monthlyIncome > 5500)
			this.loanAuthorized = true;
		else if (this.combinedFicoScore > 600 && this.monthlyIncome > 6000)
			this.loanAuthorized = true;
		else if(this.combinedFicoScore > 575 && this.monthlyIncome > 10000)
			this.loanAuthorized = true;	
		
		return this.loanAuthorized;
		
	}

}
