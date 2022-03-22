proc sort data=WORK.IMPORT2 out=_SeriesPlotTaskData;
	by observation_date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt "Median Household Income in the United States";
	series x=observation_date y=MEHOINUSA646N /;
	xaxis grid label="Year";
	yaxis grid label="Current Dollars";
run;