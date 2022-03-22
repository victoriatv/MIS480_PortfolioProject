proc sort data=WORK.IMPORT1 out=_SeriesPlotTaskData;
	by observation_date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt 
		"Average Amount Financed for Used Car Loans at Finance Companies";
	series x=observation_date y=DTCTLVEUANQ /;
	xaxis grid label="Year";
	yaxis grid label="Dollars";
run;