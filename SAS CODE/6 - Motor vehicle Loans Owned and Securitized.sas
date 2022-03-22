proc sort data=WORK.IMPORT5 out=_SeriesPlotTaskData;
	by observation_date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt "Motor Vehicle Loans Owned and Securitized";
	series x=observation_date y=MVLOAS /;
	xaxis grid label="Year";
	yaxis grid label="Billions of Dollars";
run;
