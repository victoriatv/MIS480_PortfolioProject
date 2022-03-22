data modified;
 set work.import;
 if n17a_3 <= 2 then y=0;
 else y=1;
 if n17a_3 <= 0 then delete;
run;

data remove_old;
 set modified  (drop=n17a_3);
run;

data final_dataset;
 set remove_old;
 if N22 = ' ' then delete;
 if N2_1='' then N2_1=0;
  if N2_2='' then N2_2=0;
   if N2_3='' then N2_3=0;
    if N2_4='' then N2_4=0;
     if N2_5='' then N2_5=0;
     if N2_6='' then N2_6=0;
run;


proc logistic data=final_dataset;
   class N1_1 N1_2 N1_3 N1_4 N1_5 N22 y/ param=glm;
   model y (event='1') = N1_1 N1_2 N1_3 N1_4 N1_5 N2_1 N2_2 N2_3 N2_4 N2_5 N2_6 N22/ LACKFIT;
run;
