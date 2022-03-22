proc sort data=WORK.IMPORT3 out=_SeriesPlotTaskData;
	by observation_date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt "Unemployment Rate";
	series x=observation_date y=UNRATE /;
	xaxis grid label="Year";
	yaxis grid label="Rate";
run;