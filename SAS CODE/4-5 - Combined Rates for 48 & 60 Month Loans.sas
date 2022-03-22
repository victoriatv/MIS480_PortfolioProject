proc sgplot data=work.import4;
   series x=observation_date y=RIFLPBCIANM60NM / legendlabel="60 Month Loan";
   series x=observation_date y=TERMCBAUTO48NS / legendlabel="48 Month Loan";
   title "Finance Rate on Consumer Installment Loans at Commercial Banks";
   yaxis label="Finance Rate";
run;